//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package vanet.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.aodv.AodvRouter;
import inet.node.inet.INetworkNode;
import inet.physicallayer*.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import org.car2x.veins.visualizer.roads.RoadsCanvasVisualizer;
import org.car2x.veins.subprojects.veins_inet.VeinsInetManager;
import inet.environment.common.PhysicalEnvironment;
import org.car2x.veins.modules.obstacle.ObstacleControl;
import org.car2x.veins.subprojects.veins_inet.VeinsInetCar;

module car extends VeinsInetCar
{
}
network Vanet
{
    parameters:
        @display("bgb=650,500;bgg=100,1,grey95");

    submodules:
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            @display("p=579.60004,275.18402");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=579.60004,124.992004");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=478.80002,120.96001");
        }
        roadsCanvasVisualizer: RoadsCanvasVisualizer {
            @display("p=478.80002,275.18402");
        }
        manager: VeinsInetManager {
            @display("p=579.60004,205.632");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=410.256,199.584;i=misc/marker");
        }
        obstacles: ObstacleControl {
            @display("p=179.42401,57.456;i=misc/houses");
        }
        node[0]: car {
            @display("p=56.448,342.72");
        }
        obstacles1: ObstacleControl {
            @display("p=228.81601,57.456;i=misc/houses");
        }
}
