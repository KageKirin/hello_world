-- package geniefile for khutils

khutils_script = path.getabsolute(path.getdirectory(_SCRIPT))
khutils_root = path.join(khutils_script, "../src", "khutils")

khutils_includedirs = {
	path.join(khutils_root, ".."),
}

khutils_libdirs = {}
khutils_links = {}

khutils_defines = {}

----

return {
	_load_package = function()
		--- obsolete since merged into this repo
		-- if os.isdir(khutils_root) then
		-- 	os.executef('git -C %s pull', khutils_root)
		-- else
		-- 	os.executef('git clone https://github.com/KageKirin/khutils.git %s', khutils_root)
		-- end
	end,

	_add_includedirs = function()
		includedirs { khutils_includedirs }
	end,

	_add_defines = function()
		defines { khutils_defines }
	end,

	_add_libdirs = function()
		libdirs { khutils_libdirs }
	end,

	_add_external_links = function()
		links { khutils_links }
	end,

	_add_self_links = function()
	end,

	_create_projects = function()

group "thirdparty"
project "khutils"
	kind "StaticLib"
	language "C++"
	flags { "CppLatest"}

	defines {
		khutils_defines,
	}

	includedirs {
		khutils_includedirs,
		catch2_includedirs,
		fmt_includedirs,
		glm_includedirs,
		flatglm_includedirs,
		boost_includedirs,
		flatbuffers_includedirs,
		ranges_includedirs,
		"../src",
	}

	files {
		path.join(khutils_root, "**.hpp"),
	}

	configuration {}

end, -- _create_projects()
}

---
