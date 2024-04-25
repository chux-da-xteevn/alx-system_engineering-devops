# a manifest that kills a process

$file_name = 'killmenow'
exec { 'kill_process':
    command => "pkill ${file_name}",
    path    => '/usr/bin',
}
