class users {
	 user { 'git':
		ensure => present,
		comment => 'Git',
		home => '/home/git',
		managehome=> true,
		}
	ssh_authorized_key { 'git_ssh':
		user => 'dave',
		type => 'rsa',
		key => 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAuigNioLp8i8+XNr2VlahEdUsltYvMBgZQy0MFIMo9X0ft7T/HHHCK953hmkvig6IOyxn4gua/NxZ+PUWRdXeNh7UaXQEG1Madp3uWE5/6pRi1NIWa8fB5DjEGfg50tA0WvQ2cJKfVlfrb8xVC8Rhwuvk5a17PANGaiQuFRLwEC0/COL8T5UCOyBXe8VBAAyozEV8dAQQEvd33vJgKp+AyDBAZhQgOlhKH45s1UuaPwl7fl+5Wr4fK4NtaYofDRdX4c3iX0brLrZAsefME6dOd8RY4afbVlov6x4c8A64vTytO8qz7dcwYvtcnaHBc2l73p2Zo4D/Fe6R2pOR1QIACQ==',
		}	
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
	user { 'rich':
                ensure => present,
                comment => 'Rich Tomksinson',
                home => '/home/rich',
                managehome => true,
                }
                ssh_authorized_key { 'rich_ssh':
                user => 'rich',
                type => 'rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFEy3lgPQiaHjiI/9uKjdfLxrbP6p9lrJ8VX/d5pL3NIvdBM91Cv4az6fCuVhgh+CTuk4bvlHfKI6Cieu0eNOGjxEKUIliWkck5CSlVokYoqcqe7UZIUau/jwzpT70p2PSbypqdclhlkaBsuRmgh83VB6tdV6F5PAdStLFelqif5rFBJqcFGdBTLzmpw9FAoJez0PtceFhcY6lU75uzST2t58IDavTqg8odq6q/VpiQtbmOVaGMaEjmAY5FC0p3ZUThoBPERmGs0XSHb5cbSoyHqTQNWn6X0l43RDoS/lP3UGeoefVgGlH06WSoXCLaAhVR1I0qSsqpeqyQ5AKVLtN',
                }
	user { 'cam':
                ensure => present,
                comment => 'Cam Lee',
                home => '/home/cam',
                managehome => true,
                }
                ssh_authorized_key { 'cam_ssh':
                user => 'cam',
                type => 'rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFEy3lgPQiaHjiI/9uKjdfLxrbP6p9lrJ8VX/d5pL3NIvdBM91Cv4az6fCuVhgh+CTuk4bvlHfKI6Cieu0eNOGjxEKUIliWkck5CSlVokYoqcqe7UZIUau/jwzpT70p2PSbypqdclhlkaBsuRmgh83VB6tdV6F5PAdStLFelqif5rFBJqcFGdBTLzmpw9FAoJez0PtceFhcY6lU75uzST2t58IDavTqg8odq6q/VpiQtbmOVaGMaEjmAY5FC0p3ZUThoBPERmGs0XSHb5cbSoyHqTQNWn6X0l43RDoS/lP3UGeoefVgGlH06WSoXCLaAhVR1I0qSsqpeqyQ5AKVLtN',
                }
	}	
	
