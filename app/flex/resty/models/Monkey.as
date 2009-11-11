package resty.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="monkeys")]
  [Bindable]
  public class Monkey extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var age:int = 0;

    public function Monkey() {
      super(LABEL);
    }
  }
}
