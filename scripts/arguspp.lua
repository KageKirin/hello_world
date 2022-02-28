-- package geniefile for arguspp

arguspp_script = path.getabsolute(path.getdirectory(_SCRIPT))
arguspp_root = path.join(arguspp_script, "../src", "arguspp")

arguspp_includedirs = {
	arguspp_root,
}

arguspp_libdirs = {}
arguspp_links = {}

arguspp_defines = {}

----

return {
	_load_package = function() end,

	_add_includedirs = function()
		includedirs { arguspp_includedirs }
	end,

	_add_defines = function()
		defines { arguspp_defines }
	end,

	_add_libdirs = function()
		libdirs { arguspp_libdirs }
	end,

	_add_external_links = function()
		links { arguspp_links }
	end,

	_add_self_links = function()
		links { "arguspp" }
	end,

	_create_projects = function()

group "thirdparty"
project "arguspp"
	kind "StaticLib"
	language "C++"
	flags { "CppLatest"}

	defines {
		arguspp_defines,
	}

	includedirs {
		arguspp_includedirs,
		argus_includedirs,
	}

	files {
		path.join(arguspp_root, "*.hpp"),
		path.join(arguspp_root, "*.cpp"),
	}

	configuration {}

end, -- _create_projects()
}

---
