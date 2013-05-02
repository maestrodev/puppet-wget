wget::fetch { 'test':
  source      => 'http://localhost/source',
  destination => '/tmp/dest',
  user        => 'testuser',
}

wget::authfetch { 'authtest':
  source      => 'http://localhost/source',
  destination => '/tmp/dest',
  user        => 'myuser',
  password    => 'mypassword',
}
