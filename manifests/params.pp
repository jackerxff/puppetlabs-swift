class swift::params {
  case $osfamily {
    'Debian': {
      $package_name                      = 'swift'
      $client_package                    = 'python-swiftclient'
      $proxy_package_name                = 'swift-proxy'
      $proxy_service_name                = 'swift-proxy'
      $object_package_name               = 'swift-object'
      $object_service_name               = 'swift-object'
      $object_replicator_service_name    = 'swift-object-replicator'
      $container_package_name            = 'swift-container'
      $container_service_name            = 'swift-container'
      $container_replicator_service_name = 'swift-container-replicator'
      $account_package_name              = 'swift-account'
      $account_service_name              = 'swift-account'
      $account_replicator_service_name   = 'swift-account-replicator'
      $swift3                            = 'swift-plugin-s3'
      if $::operatingsystem == 'Debian' {
        $service_proivider    = 'debian'
      } else {
        $service_provider     = 'upstart'
      }
    }
    'RedHat': {
      $package_name                      = 'openstack-swift'
      $client_package                    = 'python-swiftclient'
      $proxy_package_name                = 'openstack-swift-proxy'
      $proxy_service_name                = 'openstack-swift-proxy'
      $object_package_name               = 'openstack-swift-object'
      $object_service_name               = 'openstack-swift-object'
      $object_replicator_service_name    = undef
      $container_package_name            = 'openstack-swift-container'
      $container_service_name            = 'openstack-swift-container'
      $container_replicator_service_name = undef
      $account_package_name              = 'openstack-swift-account'
      $account_service_name              = 'openstack-swift-account'
      $account_replicator_service_name   = undef
      $service_provider                  = undef
      $swift3                            = 'openstack-swift-plugin-swift3'
    }
    default: {
        fail("Unsupported osfamily: ${osfamily} for os ${operatingsystem}")
    }
  }
}
