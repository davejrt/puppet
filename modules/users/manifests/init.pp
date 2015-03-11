class users {
	 user { 'dave':
                ensure => present,
                comment => 'Dave Try',
                home => '/home/dave',
                managehome => true,
                }
	 ssh_authorized_key { 'dave_ssh':
		user => 'dave',
		type => 'rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFEy3lgPQiaHjiI/9uKjdfLxrbP6p9lrJ8VX/d5pL3NIvdBM91Cv4az6fCuVhgh+CTuk4bvlHfKI6Cieu0eNOGjxEKUIliWkck5CSlVokYoqcqe7UZIUau/jwzpT70p2PSbypqdclhlkaBsuRmgh83VB6tdV6F5PAdStLFelqif5rFBJqcFGdBTLzmpw9FAoJez0PtceFhcY6lU75uzST2t58IDavTqg8odq6q/VpiQtbmOVaGMaEjmAY5FC0p3ZUThoBPERmGs0XSHb5cbSoyHqTQNWn6X0l43RDoS/lP3UGeoefVgGlH06WSoXCLaAhVR1I0qSsqpeqyQ5AKVLtN',
		}
	user { 'riley':
                ensure => present,
                comment => 'Riley Kelly',
                home => '/home/riley',
                managehome => true,
                }
		ssh_authorized_key { 'riley_ssh':
                user => 'riley',
                type => 'rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFEy3lgPQiaHjiI/9uKjdfLxrbP6p9lrJ8VX/d5pL3NIvdBM91Cv4az6fCuVhgh+CTuk4bvlHfKI6Cieu0eNOGjxEKUIliWkck5CSlVokYoqcqe7UZIUau/jwzpT70p2PSbypqdclhlkaBsuRmgh83VB6tdV6F5PAdStLFelqif5rFBJqcFGdBTLzmpw9FAoJez0PtceFhcY6lU75uzST2t58IDavTqg8odq6q/VpiQtbmOVaGMaEjmAY5FC0p3ZUThoBPERmGs0XSHb5cbSoyHqTQNWn6X0l43RDoS/lP3UGeoefVgGlH06WSoXCLaAhVR1I0qSsqpeqyQ5AKVLtN',
                }
	}	
	
