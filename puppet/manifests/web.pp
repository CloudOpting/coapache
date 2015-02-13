class wordpress::web {

	class {'apache':
		mpm_module => 'prefork'
	}

       apache::vhost { 'first.example.com':
		port    => '80',
		docroot => '/var/www/first.example.com',
		serveraliases => [	'www.first.example.com',
					'www2.first.example.com',
				]
	}

	class {'::apache::mod::php': }
}
