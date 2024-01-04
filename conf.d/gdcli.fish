function _gdcli_install --on-event gdcli_install
	set -U _gdcli_base_script "
class_name GDCli extends MainLoop
const ARGS = {{args}}
"
end

function _gdcli_uninstall --on-event gdcli_uninstall
	set -Ux _gdcli_base_script
end
