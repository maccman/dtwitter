require 'cache_money'

$memcache = Rails.cache.instance_variable_get('@data')
$local = Cash::Local.new($memcache)
$lock  = Cash::Lock.new($memcache)
$cache = Cash::Transactional.new($local, $lock)

class ActiveRecord::Base
  is_cached :repository => $cache
end