#include "ruby.h"
#include "ofMain.h"
#include "zajal.h"

/* external math module */
VALUE zj_mMathematics;

VALUE zj_seed_random(int argc, VALUE* argv, VALUE klass) {
  VALUE val;
  rb_scan_args(argc, argv, "01", &val);
  
  if(NIL_P(val)) {
    /*  called without arguments, seed to clock time */
    ofSeedRandom();
    
  } else if(!NIL_P(val)) {
    /*  called with one argument, seed to value */
    ofSeedRandom(NUM2DBL(val));
    
  }
  
  return Qnil;
}
  
VALUE zj_random(int argc, VALUE* argv, VALUE klass) {
  VALUE min, max;
  rb_scan_args(argc, argv, "02", &min, &max);
  
  if(NIL_P(min) && NIL_P(max)) {
    /*  called without arguments, return random number x, 0 < x < 1 */
    return DBL2NUM(ofRandomuf());
    
  } else if(!NIL_P(min) && NIL_P(max)) {
    /*  called with one argument, return random number x, 0 < x < max */
    max = min;
    return DBL2NUM(ofRandom(0, NUM2DBL(max)));
    
  } else if(!NIL_P(min) && !NIL_P(max)) {
    /*  called with two arguments, return random number x, min < x < max */
    return DBL2NUM(ofRandom(NUM2DBL(min), NUM2DBL(max)));
    
  }
  
  return Qnil;
}

VALUE zj_random_width(VALUE self) {
  return DBL2NUM(ofRandomWidth());
}

VALUE zj_random_height(VALUE self) {
  return DBL2NUM(ofRandomHeight());
}

/* methods added to Numeric class */

VALUE zj_to_deg(VALUE self) {
  /* TODO test if faster using own implementation vs calling of* function */
  /* return DBL2NUM(NUM2DBL(self) * 57.29577951); */
  return DBL2NUM(ofRadToDeg(NUM2DBL(self)));
}

VALUE zj_to_rad(VALUE self) {
  /* TODO test if faster using own implementation vs calling of* function */
  /* return DBL2NUM(NUM2DBL(self) * 0.017453293); */
  return DBL2NUM(ofDegToRad(NUM2DBL(self)));
}

VALUE zj_sign(VALUE self) {
  return DBL2NUM(ofSign(NUM2DBL(self)));
}

VALUE zj_clamp(VALUE self, VALUE min, VALUE max) {
  return DBL2NUM(ofClamp(NUM2DBL(self), NUM2DBL(min), NUM2DBL(max)));
}

VALUE zj_normalize(VALUE self, VALUE min, VALUE max) {
  return DBL2NUM(ofNormalize(NUM2DBL(self), NUM2DBL(min), NUM2DBL(max)));
}

void Init_Mathematics() {
  zj_mMathematics = rb_define_module_under(zj_mZajal, "Mathematics");
  
  rb_define_method(zj_mMathematics, "seed_random", RB_FUNC(zj_seed_random), -1);
  rb_define_method(zj_mMathematics, "random", RB_FUNC(zj_random), -1);
  rb_define_method(zj_mMathematics, "random_width", RB_FUNC(zj_random_width), 0);
  rb_define_method(zj_mMathematics, "random_height", RB_FUNC(zj_random_height), 0);
  
  rb_define_const(zj_mMathematics, "Pi", DBL2NUM(PI));
  rb_define_const(zj_mMathematics, "TwoPi", DBL2NUM(TWO_PI));
  rb_define_const(zj_mMathematics, "FourPi", DBL2NUM(FOUR_PI));
  rb_define_const(zj_mMathematics, "HalfPi", DBL2NUM(HALF_PI));
  
  rb_define_method(rb_cNumeric, "to_deg", RB_FUNC(zj_to_deg), 0);
  rb_define_method(rb_cNumeric, "to_rad", RB_FUNC(zj_to_rad), 0);
  rb_define_method(rb_cNumeric, "sign", RB_FUNC(zj_sign), 0);
  rb_define_method(rb_cNumeric, "clamp", RB_FUNC(zj_clamp), 2);
  rb_define_method(rb_cNumeric, "normalize", RB_FUNC(zj_normalize), 2);
}
