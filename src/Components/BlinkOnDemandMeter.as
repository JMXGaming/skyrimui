﻿class Components.BlinkOnDemandMeter extends Components.Meter
{
	var BlinkMovieClip:MovieClip;
	
	function BlinkOnDemandMeter(aMeterMovieClip:MovieClip, aBlinkMovieClip:MovieClip)
	{
		super(aMeterMovieClip);
		
		BlinkMovieClip = aBlinkMovieClip;
		BlinkMovieClip.gotoAndStop("StartFlash");
	}
	
	function StartBlinking()
	{
		meterMovieClip._parent.PlayForward(meterMovieClip._parent._currentframe);
		BlinkMovieClip.gotoAndPlay("StartFlash");
	}
}
