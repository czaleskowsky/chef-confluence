name "confluence"
description "confluence role"
run_list(
	"recipe[mysql::server]",
	"recipe[confluence]"
)
default_attributes "mysql" => {
	"server_debian_password" => "confluence",
	"server_repl_password" => "confluence",
	"server_root_password" => "confluence"
}