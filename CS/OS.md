# 作業系統筆記

課本：<http://codex.cs.yale.edu/avi/os-book/OS8/os8c/index.html>

##PART THREE MEMORY MANAGEMENT
###Chapter 8 Main Memory
`logical address`：由CPU產生的記憶體位置  
`physical address`：compile time & load time產生的logic & physical address相同，但execution time產生的則不同  
=> 此時的logical address稱為`virtual address`  
`logical address space`：由程式產生的logical address的集合  
`physical address space`：對應logical address space的physical space的集合  
`memory-management unit (MMU)`：在run-time mapping virtual & physical address的硬體  
`relocation register`： base register  
`dynamic loading`：routine要被called才會被load到記憶體

##PART 6 DISTRIBUTED SYSTEMS
###Chapter 16 Distributed System Structures
`distributed system`：由通訊網路連結起來的processor的集合。processor並不共享記憶體和clock  

`site`：機器所在的位置  

`host`：在某個site的一個特定的系統。一般來說一site一host  

`server`：持有在別的site上的host的資源  

建造distributed system的四個理由
1. resource sharing
2. compu? speedup
3. reliability
4. communication

`load sharing`：一個site把overloaded job移到light loaded site的動作  

`computation migration`：將計算做跨系統的轉移  

`process migration`：process不一定在它被發動的site執行  

`service`：在一至多台機器上運行的軟體單位，提供特定種類的功能給client  

`server`：在單一機器上運行的service software  

`client`：一個以一組操作（client interface）觸發service的process  

`naming`：logical & physical物件的mapping  

`file replication`

`location transpaency`：無法由檔案名稱得知其實體位置  

`location idependence`：當實體位置改變，檔案名稱無需改變  

`file migration`