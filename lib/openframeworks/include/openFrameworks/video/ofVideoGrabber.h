#pragma once

#include "ofConstants.h"
#include "ofTexture.h"
#include "ofBaseTypes.h"
#include "ofPixels.h"

#ifdef OF_VIDEO_CAPTURE_IPHONE
	#include "ofiPhoneVideoGrabber.h"
	#define OF_VID_GRABBER_TYPE ofiPhoneVideoGrabber()
#endif

#ifdef OF_VIDEO_CAPTURE_QUICKTIME
	#include "ofQuickTimeGrabber.h"
	#define OF_VID_GRABBER_TYPE ofQuickTimeGrabber()
#endif

#ifdef OF_VIDEO_CAPTURE_DIRECTSHOW
	#include "ofDirectShowGrabber.h"
	#define OF_VID_GRABBER_TYPE ofDirectShowGrabber()
#endif

#ifdef OF_VIDEO_CAPTURE_GSTREAMER
	#include "ofGstVideoGrabber.h"
	#define OF_VID_GRABBER_TYPE ofGstVideoGrabber()
#endif

#ifdef OF_VIDEO_CAPTURE_ANDROID
	#include "ofxAndroidVideoGrabber.h"
	#define OF_VID_GRABBER_TYPE ofxAndroidVideoGrabber()
#endif

class ofVideoGrabber : public ofBaseVideoGrabber,public ofBaseDraws, public ofBaseHasTexture{

	public :

		ofVideoGrabber();
		virtual ~ofVideoGrabber();
		
		bool					setGrabber(ofBaseVideoGrabber * newGrabber);
		ofBaseVideoGrabber *	getGrabber();

		void				listDevices();
		bool				isFrameNew();
		void				update();
		void				grabFrame();
		void				close();	
		bool				initGrabber(int w, int h){return initGrabber(w,h,true);}
		bool				initGrabber(int w, int h, bool bTexture);
		void				setPixelFormat(ofPixelFormat pixelFormat);
		ofPixelFormat 		getPixelFormat();
		
		void				videoSettings();
		unsigned char 	*	getPixels();
		ofPixelsRef			getPixelsRef();
		ofTexture &			getTextureReference();
		void				setVerbose(bool bTalkToMe);
		void				setDeviceID(int _deviceID);
		void				setDesiredFrameRate(int framerate);
		void				setUseTexture(bool bUse);
		void				draw(float x, float y, float w, float h);
		void				draw(float x, float y);
		void				draw(const ofPoint & p);
		void				draw(const ofRectangle & r);

		//the anchor is the point the image is drawn around.
		//this can be useful if you want to rotate an image around a particular point.
        void				setAnchorPercent(float xPct, float yPct);	//set the anchor as a percentage of the image width/height ( 0.0-1.0 range )
        void				setAnchorPoint(float x, float y);				//set the anchor point in pixels
        void				resetAnchor();								//resets the anchor to (0, 0)

		float				getHeight();
		float				getWidth();

		//this is kept as legacy to support people accessing width and height directly. 
		int					height;
		int					width;

	protected:
		
		ofTexture tex;
		bool bUseTexture;
		bool bInitialized;
		ofBaseVideoGrabber		* grabber;
		int RequestedDeviceID;
		
		ofPixelFormat internalPixelFormat;
};



