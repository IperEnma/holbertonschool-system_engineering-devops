#setting manually
exec {'replace ulimit value':
  command  => "sed -i 's/-n 15/-n 4096/g' /etc/default/nginx",
  provider => shell,
}
exec {'restart nginx':
  command  => '/etc/init.d/nginx restart',
  provider => shell,
}
