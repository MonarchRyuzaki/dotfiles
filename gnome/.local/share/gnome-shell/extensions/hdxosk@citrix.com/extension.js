const Gio = imports.gi.Gio;
const Main = imports.ui.main;

const MR_DBUS_IFACE = `
<node>
   <interface name="org.gnome.Shell.Extensions.HdxOsk">
      <method name="GetVisible">
         <arg type="b" direction="out" name="visible" />
      </method>
   </interface>
</node>`;


class OskExtension {
    constructor() {
        this._proxy = null;
        this.kbdVisible = false;
    }

    enable() {
        this._dbus = Gio.DBusExportedObject.wrapJSObject(MR_DBUS_IFACE, this);
        this._dbus.export(Gio.DBus.session, '/org/gnome/Shell/Extensions/HdxOsk');
    }

    disable() {
        this._dbus.flush();
        this._dbus.unexport();
        delete this._dbus;
    }

    GetVisible() {
        let kbdVisible = Main.keyboard.visible;
        log(` visible ${Main.keyboard.visible}`);
        return kbdVisible;
    }

}

function init() {
    return new OskExtension();
}
