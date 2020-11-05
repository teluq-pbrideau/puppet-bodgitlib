# @since 1.7.0
function bodgitlib::enclose_ipv6(String $host) {

  type($host) ? {
    Type[Stdlib::IP::Address::V6::NoSubnet] => "[${host}]",
    default                                 => $host,
  }
}
