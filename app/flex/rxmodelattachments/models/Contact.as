package rxmodelattachments.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="contacts")]
  [Bindable]
  public class Contact extends RxModel {
    public static const LABEL:String = "firstName";

    public var firstName:String = "";

    public var lastName:String = "";

    public var emailAddress:String = "";

    public var notes:String = "";

    [Ignored]
    public var attachmentUrl:String;
    
    public function Contact() {
      super(LABEL);
    }
  }
}
