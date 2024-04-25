# installing a flask
# version 2.1.0 mandated

$package_name = 'flask'
package { $package_name:
	ensure => '2.1.0',
}
