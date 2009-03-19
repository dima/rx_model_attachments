package rxmodelattachments.utils {
  import flash.media.Camera;
  import flash.media.Video;
  import flash.display.Sprite;
  import flash.display.BitmapData;
  import flash.geom.Matrix;
  import flash.display.Bitmap;
  import flash.system.Security;
  import flash.system.SecurityPanel;
   
  public class CameraStream extends Sprite {
    public static const DEFAULT_CAMERA_FPS:Number = 30;
     
    public var video:Video;
    
    private var camera:Camera;
    private var cameraWidth:Number;
    private var cameraHeight:Number;

    public function CameraStream(w:Number = 320, h:Number = 240) {
      camera = Camera.getCamera();
      cameraWidth = w;
      cameraHeight = h;
      if (camera != null) {
        camera.setMode(cameraWidth, cameraHeight, DEFAULT_CAMERA_FPS);
        video = new Video(w, h);
        video.attachCamera(camera);
        addChild(video); 
      } else {
        Security.showSettings(SecurityPanel.CAMERA)
      }
    }
    
    public function getSnapshotBitmapData():BitmapData {
      var snapshot:BitmapData = new BitmapData(cameraWidth, cameraHeight);
      snapshot.draw(video,new Matrix());
      return snapshot;
    }
    
    public function getSnapshot():Bitmap {
      var bitmap:Bitmap = new Bitmap(getSnapshotBitmapData());
      return bitmap;
    }
  }
} 
