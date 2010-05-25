/*
 * openwms.org, the Open Warehouse Management System.
 *
 * This file is part of openwms.org.
 *
 * openwms.org is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * openwms.org is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this software. If not, write to the Free
 * Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
 * 02110-1301 USA, or see the FSF site: http://www.fsf.org.
 */
package org.openwms.web.flex.client.event {
    import com.adobe.cairngorm.control.CairngormEvent;

    import flash.events.Event;

    /**
     * An ApplicationEvent.
     *
     * @author <a href="mailto:openwms@googlemail.com">Heiko Scherrer</a>
     * @version $Revision: 700 $
     */
    public class ApplicationEvent extends CairngormEvent {
        public static const LOAD_ALL_MODULES:String="Load_All_Modules";
        public static const MODULES_LOADED:String="Modules_Loaded";
        public static const MODULE_CONFIG_CHANGED:String="Module_Config_Changed";
        public static const MODULE_UNLOADED:String="Module_Unloaded";
        public static const SAVE_MODULE:String="Save_Module";
        public static const DELETE_MODULE:String="Delete_Module";

        public static const LOGIN:String="APP_LOGIN";
        public static const LOGOUT:String="APP_LOGOUT";

        public function ApplicationEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false) {
            super(type, bubbles, cancelable);
        }

    }
}