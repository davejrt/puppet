#testing a git pull on new macbook


node 'node1' {
	include base-server
	include users
	include ntp
	}

node 'node2' {
	include base-server
	include users
	}
node 'node3' {
	include base-server
	include users
	}

node node4 {
	include base-server
	include users
	}



