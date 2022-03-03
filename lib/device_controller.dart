
import 'package:network2/device_model.dart';

class DeviceController {
    List<DevicesModel> _devices =[];
    int room=0;
    int floors=0;
    int sizeRoom=0;
    String type ="Room";
    late int numberPc;
    int numDevices =0;

    DeviceController(this.room, this.floors, this.sizeRoom,this.type);

    List<DevicesModel> getDevices(){
           if(floors!=0) {
             numberPc = ((sizeRoom ~/ 2) * floors) * room;
           }else{
             numberPc = ((sizeRoom ~/ 2));
           }
           if(type=="Room"){
             _devices.add(DevicesModel(id:1,device: "PC",price:"\$500",company: "HP",description: "any pc",number:"$numberPc"));
             _devices.add(DevicesModel(id:2,device: "switch",price:"\$199.00",company: "MikroTik",description: "10th Generation Intel® Core™ i5 processor Windows 10 Home Single Language 8 GB DDR4-2666 MHz RAM (1 x 8 GB) 256 GB PCIe® NVMe™ M.2 SSD 1 TB 7200 rpm SATA",number:"1"));
           }else if(type=="Building"){
              int s = floors*2;
              int r = floors;
              numDevices = s+numberPc+1;
             _devices.add(DevicesModel(id:1,device: "PC",price:"\$500",company: "HP",description: "10th Generation Intel® Core™ i5 processor Windows 10 Home Single Language 8 GB DDR4-2666 MHz RAM (1 x 8 GB) 256 GB PCIe® NVMe™ M.2 SSD 1 TB 7200 rpm SATA",number:"$numberPc"));
             _devices.add(DevicesModel(id:2,device: "switch",price:"\$199.00",company: "MikroTik",description: "10 Gigabit fibre connectivity way over a 100 meters – for small offices or ISPs. Hardware offloaded VLAN-filtering and even some L3 routing on a budget!",number:"$s"));
             _devices.add(DevicesModel(id:3,device: "router",price:"\$199.00",company: "MikroTik",description: "An out-of-the-box 863-870 MHz IoT Gateway solution for LoRa® technology. For ultimate versatility and cost-effectiveness. The first gateway with a CAT-M interface for LoRa®!",number:"1"));
              if(numDevices>20) {
                _devices.add(DevicesModel(id: 4,
                    device: "server",
                    price: "\$1500",
                    company: "HP",
                    description: "HPE DL560 Gen10 8170 4P256GB Adv WW Svr Server:ProLiant DL560 Family Gen",
                    number: "1"));
              }
           }else if(type=="Floor"){
             int s = floors*2;
             int r = floors;
             numDevices = s+numberPc+1;
             _devices.add(DevicesModel(id:1,device: "PC",price:"\$500",company: "HP",description: "10th Generation Intel® Core™ i5 processor Windows 10 Home Single Language 8 GB DDR4-2666 MHz RAM (1 x 8 GB) 256 GB PCIe® NVMe™ M.2 SSD 1 TB 7200 rpm SATA",number:"$numberPc"));
             _devices.add(DevicesModel(id:2,device: "switch",price:"\$199.00",company: "MikroTik",description: "10 Gigabit fibre connectivity way over a 100 meters – for small offices or ISPs. Hardware offloaded VLAN-filtering and even some L3 routing on a budget!",number:"$s"));
             _devices.add(DevicesModel(id:3,device: "router",price:"\$199.00",company: "MikroTik",description: "An out-of-the-box 863-870 MHz IoT Gateway solution for LoRa® technology. For ultimate versatility and cost-effectiveness. The first gateway with a CAT-M interface for LoRa®!",number:"1"));
             if(numDevices>20) {
               _devices.add(DevicesModel(id: 4,
                   device: "server",
                   price: "\$1500",
                   company: "HP",
                   description: "HPE DL560 Gen10 8170 4P256GB Adv WW Svr Server:ProLiant DL560 Family Gen",
                   number: "1"));
             }
           }
           return _devices;
    }

    //MikroTik Routers and Wireless ...

}