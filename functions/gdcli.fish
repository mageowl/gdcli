function gdcli
	set script_args "[\"$(string join -n '","' $argv[2..-1])\"]"
	set script_body (cat $argv[1] | string collect)

	touch /tmp/gdcli.gd
	string replace "{{args}}" $script_args $_gdcli_base_script > /tmp/gdcli.gd
	echo $script_body >> /tmp/gdcli.gd

	godot -s /tmp/gdcli.gd --headless
	rm /tmp/gdcli.gd
end
