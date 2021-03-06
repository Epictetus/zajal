module Zajal
  module Graphics
    module Internals
      @named_colors = {}
    
      # X11/SVG color http://www.w3.org/TR/css3-color/#svg-color
      @named_colors[:snow] = [255, 250, 250]
      @named_colors[:ghost_white] = [248, 248, 255]
      @named_colors[:white_smoke] = [245, 245, 245]
      @named_colors[:gainsboro] = [220, 220, 220]
      @named_colors[:floral_white] = [255, 250, 240]
      @named_colors[:old_lace] = [253, 245, 230]
      @named_colors[:linen] = [250, 240, 230]
      @named_colors[:antique_white] = [250, 235, 215]
      @named_colors[:papaya_whip] = [255, 239, 213]
      @named_colors[:blanched_almond] = [255, 235, 205]
      @named_colors[:bisque] = [255, 228, 196]
      @named_colors[:peach_puff] = [255, 218, 185]
      @named_colors[:navajo_white] = [255, 222, 173]
      @named_colors[:moccasin] = [255, 228, 181]
      @named_colors[:cornsilk] = [255, 248, 220]
      @named_colors[:ivory] = [255, 255, 240]
      @named_colors[:lemon_chiffon] = [255, 250, 205]
      @named_colors[:seashell] = [255, 245, 238]
      @named_colors[:honeydew] = [240, 255, 240]
      @named_colors[:mint_cream] = [245, 255, 250]
      @named_colors[:azure] = [240, 255, 255]
      @named_colors[:alice_blue] = [240, 248, 255]
      @named_colors[:lavender] = [230, 230, 250]
      @named_colors[:lavender_blush] = [255, 240, 245]
      @named_colors[:misty_rose] = [255, 228, 225]
      @named_colors[:white] = [255, 255, 255]
      @named_colors[:black] = [0, 0, 0]
      @named_colors[:dark_slate_gray] = [47, 79, 79]
      @named_colors[:dark_slate_grey] = [47, 79, 79]
      @named_colors[:dim_gray] = [105, 105, 105]
      @named_colors[:dim_grey] = [105, 105, 105]
      @named_colors[:slate_gray] = [112, 128, 144]
      @named_colors[:slate_grey] = [112, 128, 144]
      @named_colors[:light_slate_gray] = [119, 136, 153]
      @named_colors[:light_slate_grey] = [119, 136, 153]
      @named_colors[:gray] = [190, 190, 190]
      @named_colors[:grey] = [190, 190, 190]
      @named_colors[:light_grey] = [211, 211, 211]
      @named_colors[:light_gray] = [211, 211, 211]
      @named_colors[:midnight_blue] = [25, 25, 112]
      @named_colors[:navy] = [0, 0, 128]
      @named_colors[:navy_blue] = [0, 0, 128]
      @named_colors[:cornflower_blue] = [100, 149, 237]
      @named_colors[:dark_slate_blue] = [72, 61, 139]
      @named_colors[:slate_blue] = [106, 90, 205]
      @named_colors[:medium_slate_blue] = [123, 104, 238]
      @named_colors[:light_slate_blue] = [132, 112, 255]
      @named_colors[:medium_blue] = [0, 0, 205]
      @named_colors[:royal_blue] = [65, 105, 225]
      @named_colors[:blue] = [0, 0, 255]
      @named_colors[:dodger_blue] = [30, 144, 255]
      @named_colors[:deep_sky_blue] = [0, 191, 255]
      @named_colors[:sky_blue] = [135, 206, 235]
      @named_colors[:light_sky_blue] = [135, 206, 250]
      @named_colors[:steel_blue] = [70, 130, 180]
      @named_colors[:light_steel_blue] = [176, 196, 222]
      @named_colors[:light_blue] = [173, 216, 230]
      @named_colors[:powder_blue] = [176, 224, 230]
      @named_colors[:pale_turquoise] = [175, 238, 238]
      @named_colors[:dark_turquoise] = [0, 206, 209]
      @named_colors[:medium_turquoise] = [72, 209, 204]
      @named_colors[:turquoise] = [64, 224, 208]
      @named_colors[:cyan] = [0, 255, 255]
      @named_colors[:light_cyan] = [224, 255, 255]
      @named_colors[:cadet_blue] = [95, 158, 160]
      @named_colors[:medium_aquamarine] = [102, 205, 170]
      @named_colors[:aquamarine] = [127, 255, 212]
      @named_colors[:dark_green] = [0, 100, 0]
      @named_colors[:dark_olive_green] = [85, 107, 47]
      @named_colors[:dark_sea_green] = [143, 188, 143]
      @named_colors[:sea_green] = [46, 139, 87]
      @named_colors[:medium_sea_green] = [60, 179, 113]
      @named_colors[:light_sea_green] = [32, 178, 170]
      @named_colors[:pale_green] = [152, 251, 152]
      @named_colors[:spring_green] = [0, 255, 127]
      @named_colors[:lawn_green] = [124, 252, 0]
      @named_colors[:green] = [0, 255, 0]
      @named_colors[:chartreuse] = [127, 255, 0]
      @named_colors[:medium_spring_green] = [0, 250, 154]
      @named_colors[:green_yellow] = [173, 255, 47]
      @named_colors[:lime_green] = [50, 205, 50]
      @named_colors[:yellow_green] = [154, 205, 50]
      @named_colors[:forest_green] = [34, 139, 34]
      @named_colors[:olive_drab] = [107, 142, 35]
      @named_colors[:dark_khaki] = [189, 183, 107]
      @named_colors[:khaki] = [240, 230, 140]
      @named_colors[:pale_goldenrod] = [238, 232, 170]
      @named_colors[:light_goldenrod_yellow] = [250, 250, 210]
      @named_colors[:light_yellow] = [255, 255, 224]
      @named_colors[:yellow] = [255, 255, 0]
      @named_colors[:gold] = [255, 215, 0]
      @named_colors[:light_goldenrod] = [238, 221, 130]
      @named_colors[:goldenrod] = [218, 165, 32]
      @named_colors[:dark_goldenrod] = [184, 134, 11]
      @named_colors[:rosy_brown] = [188, 143, 143]
      @named_colors[:indian_red] = [205, 92, 92]
      @named_colors[:saddle_brown] = [139, 69, 19]
      @named_colors[:sienna] = [160, 82, 45]
      @named_colors[:peru] = [205, 133, 63]
      @named_colors[:burlywood] = [222, 184, 135]
      @named_colors[:beige] = [245, 245, 220]
      @named_colors[:wheat] = [245, 222, 179]
      @named_colors[:sandy_brown] = [244, 164, 96]
      @named_colors[:tan] = [210, 180, 140]
      @named_colors[:chocolate] = [210, 105, 30]
      @named_colors[:firebrick] = [178, 34, 34]
      @named_colors[:brown] = [165, 42, 42]
      @named_colors[:dark_salmon] = [233, 150, 122]
      @named_colors[:salmon] = [250, 128, 114]
      @named_colors[:light_salmon] = [255, 160, 122]
      @named_colors[:orange] = [255, 165, 0]
      @named_colors[:dark_orange] = [255, 140, 0]
      @named_colors[:coral] = [255, 127, 80]
      @named_colors[:light_coral] = [240, 128, 128]
      @named_colors[:tomato] = [255, 99, 71]
      @named_colors[:orange_red] = [255, 69, 0]
      @named_colors[:red] = [255, 0, 0]
      @named_colors[:hot_pink] = [255, 105, 180]
      @named_colors[:deep_pink] = [255, 20, 147]
      @named_colors[:pink] = [255, 192, 203]
      @named_colors[:light_pink] = [255, 182, 193]
      @named_colors[:pale_violet_red] = [219, 112, 147]
      @named_colors[:maroon] = [176, 48, 96]
      @named_colors[:medium_violet_red] = [199, 21, 133]
      @named_colors[:violet_red] = [208, 32, 144]
      @named_colors[:magenta] = [255, 0, 255]
      @named_colors[:violet] = [238, 130, 238]
      @named_colors[:plum] = [221, 160, 221]
      @named_colors[:orchid] = [218, 112, 214]
      @named_colors[:medium_orchid] = [186, 85, 211]
      @named_colors[:dark_orchid] = [153, 50, 204]
      @named_colors[:dark_violet] = [148, 0, 211]
      @named_colors[:blue_violet] = [138, 43, 226]
      @named_colors[:purple] = [160, 32, 240]
      @named_colors[:medium_purple] = [147, 112, 219]
      @named_colors[:thistle] = [216, 191, 216]
      @named_colors[:dark_grey] = [169, 169, 169]
      @named_colors[:dark_gray] = [169, 169, 169]
      @named_colors[:dark_blue] = [0, 0, 139]
      @named_colors[:dark_cyan] = [0, 139, 139]
      @named_colors[:dark_magenta] = [139, 0, 139]
      @named_colors[:dark_red] = [139, 0, 0]
      @named_colors[:light_green] = [144, 238, 144]
    
      # Zajal colors
      @named_colors[:light] = [240, 240, 240]
      @named_colors[:dark] = [32, 32, 32]
    end
  
    def named_color c, *val
      if val.size == 0
        Internals.named_colors[c]
      else
        Internals.named_colors[c] = val
      end
    end
  
    def point x=nil, y=nil
      p, = Mathematics::Internals.scan_for_vectors 2, x, y
      circle p.x, p.y, 1
    end
  
    alias :__circle :circle
    def circle *args
      r = args.pop
      v, = Mathematics::Internals.scan_for_vectors 2, *args
      __circle v.x, v.y, r
    end
  
    alias :__bezier :bezier
    def bezier *args
      a, b, c, d = Mathematics::Internals.scan_for_vectors 2, *args
      __bezier a.x, a.y, b.x, b.y, c.x, c.y, d.x, d.y
    end
  
    alias :__curve :curve
    def curve *args
      a, b, c, d = Mathematics::Internals.scan_for_vectors 2, *args
      __curve a.x, a.y, b.x, b.y, c.x, c.y, d.x, d.y
    end
  
    alias :__ellipse :ellipse
    def ellipse *args
      w, h = args.pop 2
      v, = Mathematics::Internals.scan_for_vectors 2, *args
      __ellipse v.x, v.y, w, h
    end
  
    alias :__line :line
    def line *args
      a, b = Mathematics::Internals.scan_for_vectors 2, *args
      __line a.x, a.y, b.x, b.y
    end
  
    alias :__rectangle :rectangle
    def rectangle *args
      w, h = args.pop 2
      v, = Mathematics::Internals.scan_for_vectors 2, *args
      __rectangle v.x, v.y, w, h
    end
  
    alias :__square :square
    def square *args
      s = args.pop
      v, = Mathematics::Internals.scan_for_vectors 2, *args
      __square v.x, v.y, s
    end
  
    # TODO triangle method. move logic from c to here
    # alias :__triangle :triangle
    # def triangle *args
    #   a, b, c = Mathematics::Internals.scan_for_vectors 2, *args
    #   __triangle a.x, a.y, b.x, b.y, c.x, c.y
    # end
  end
end