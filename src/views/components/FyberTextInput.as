/**
 * Created by monroe on 4/4/16.
 */
package views.components {
import flash.system.Capabilities;

import mx.events.FlexEvent;

import spark.components.TextInput;
import spark.skins.spark.TextInputSkin;

/**
 * Use this class for text inputs instead of the standard TextInput, this fixes some crashes on certain Android devices:
 * From Catalin@Fyber: "There is an issue with Android's Focus for a certain types of textRenderers in ActionScript."
 */
public class FyberTextInput extends TextInput
{
    public function FyberTextInput()
    {
        super();
        this.addEventListener(FlexEvent.ENTER, onEnter);

        if (Capabilities.manufacturer.indexOf("Android") != -1) {
            this.setStyle('skinClass', TextInputSkin);
        }
    }

    private function onEnter(... args):void
    {
        try
        {
            this.stage.focus = null;
        }
        catch(e:Error)
        {

        }
    }
}
}
