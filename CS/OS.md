# 作業系統筆記

課本：<http://codex.cs.yale.edu/avi/os-book/OS8/os8c/index.html>

##PART 2: PROCESS MANAGEMENT
###Chapter 3 Process Concept
`RPCs`：remote procedure calls

###Chapter 5 Process Scheduling
`throughput`：每單位時間完成的process數  
`turnaround time`：從submit到執行完成所需的時間  
`wating time`：在ready中所花的時間總和  
`response time`：從submit到產生第一個response的時間  
`dispatcher`：將CPU的控制權移給short-term scheduler  
功能：context switch, switch to user mode, 跳至user process中的proper location to restart program  
`dispatch latency`：dispatcher停止一個process並啟動另一個process所需的時間  
`long-term scheduler (job scheduler)`：由pool中選出process，放至memory上以候執行  
`short-term scheduler`：選出memory上ready的process，並allocate CPU給它  


##PART 3: MEMORY MANAGEMENT
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