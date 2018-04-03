package  {
	import flash.display.Sprite;
	import flash.net.NetConnection;
	import flash.net.NetStream;
	//import flash.media.video;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextField;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.events.NetStatusEvent;
	import flash.utils.Timer;
	import flash.media.Video;

	public class nose extends Sprite {
	private var _video:Video;
	private var _stream:NetStream;
	private var _playbackTime:TextField;
	private var _duration:uint;
	private var _timer:Timer;
		public function nose() {
			_duration=0;
			_playbackTime= new TextField();
			_playbackTime.autoSize= TextFieldAutoSize.LEFT;
			_playbackTime.y=20;
			_playbackTime.x=20;
			_playbackTime.text="Buffering ...";
			_timer= new Timer(1000);
			_timer.addEventListener(TimerEvent.TIMER, ontimer);
			_timer.start();
		}
		public function playMyFlv(flvUrl){
			_video= new Video();
			var cone:NetConnection = new NetConnection();
			cone.connect(null);
			_stream= new NetStream(cone);
			_stream.play(flvUrl);
			var Client:Object= new Object();
			Client.onMetaData= onMetaData1;
			_stream.client= Client;
			_video.attachNetStream(_stream);
			_stream.addEventListener(NetStatusEvent.NET_STATUS, onNetStatus);
			addChild(_video);
			addChild(_playbackTime);
		}
		private function onMetaData1(data:Object){
			_duration= data.duration;
		}
		private function onNetStatus(e:NetStatusEvent){
			_video.width= _video.videoWidth;
			_video.height= _video.videoHeight;
		}
		private function ontimer(t:TimerEvent){
			if(_duration>0 && _stream.time>0){
			   _playbackTime.text= Math.round(_stream.time)+ "/"+ Math.round(_duration);
			   }
		}
	}
	
}
