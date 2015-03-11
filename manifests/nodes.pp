node 'node1' {
	include base-server
	}

node 'node2' {
	include base-server
	}
node 'node3' {
	include base-server
	}

node node4 {
	include base-server
	include users
	}
