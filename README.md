# compsci_726
Jenna's paper: Methods for identifying clients who communicate with specific servers using TCP and on Tor. By only watching the client, not both. And some countermeasures for this.

Kurt's paper: Classifies traffic into three categories: streaming, bit torrent and browsing. Uses machine learning to do this and gives higher priority to browsing.

#Instructions:
Come up with novel research ideas.
IEEE double column format (A4).

Tor is not purely anonymizing. Exploits that reduce anonymity.

#Papers:
Guard Sets for Onion Routing  - Jenna  
Spying in the Dark (Jenna's paper) - Jenna   
RAPTOR: Routing attacks on privacy in tor - Kurt    
TorScan: Tracing Long-lived Connections and Differential Scanning Attacks  - Jenna  
The Sniper Attack: Anonymously Deanonymizing and Disabling the Tor Network   - Kurt  

#Structure:
- Abstract  
- Introduction  
	- Context  
	- Problem description 
		- Describe all the exploits we know about
	- Contribution  
- Related work  
	- At least 5 research publications  
	- Explain their solutions for each attack  
- Proposed idea  
	- Our ideas  
 	- Add a security extension to Tor which implements each thing - modify Tor's API to allow security extensions. Make Tor more extensible so you can implement your own. Be able to turn each one off or on. - Kurt  
