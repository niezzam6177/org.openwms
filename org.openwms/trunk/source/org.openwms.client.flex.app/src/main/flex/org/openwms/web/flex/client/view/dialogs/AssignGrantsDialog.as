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
package org.openwms.web.flex.client.view.dialogs {
	
	import flash.events.KeyboardEvent;
	import mx.collections.ArrayCollection;
	import mx.managers.PopUpManager;
	import org.openwms.common.domain.system.usermanagement.Role;
	import org.openwms.common.domain.system.usermanagement.SecurityObject;

    /**
     * An AssignGrantsDialog.
     *
     * @author <a href="mailto:russelltina@users.sourceforge.net">Tina Russell</a>
     * @version $Revision$
     */
    [Name]
    [Bindable]
	public class AssignGrantsDialog extends AssignUsersDialog {
		public function AssignGrantsDialog() { }
		
		override protected function init():void {
            notAssigned = new ArrayCollection(modelLocator.securityObjectNames.toArray());
            toAssign = assigned;
            for each (var role:Role in toAssign) {
                for each (var r:Role in notAssigned) {
                    if (role.name == r.name) {
                        notAssigned.removeItemAt(notAssigned.getItemIndex(r));
                    }
                }
            }
            this.addEventListener(KeyboardEvent.KEY_DOWN, keyEventHandler);
            PopUpManager.centerPopUp(this);
		}
		
		override protected function getTitle():String {
			return "Assign Grants to Role : "+role.name;
		}
		
        override protected function formatFunction(item:*):String {
            return (item == null ? " " : (item as SecurityObject).name+" - "+(item as SecurityObject).description);
        }
        
        override protected function getSortField():String {
        	return "name";
        }

        override protected function getAssignedLabel():String {
            return "Assigned Grants";
        }

        override protected function getNotAssignedLabel():String {
            return "All Grants";
        }
	}
}