-- package geniefile for flatglm

flatglm_script = path.getabsolute(path.getdirectory(_SCRIPT))
flatglm_root = path.join(flatglm_script, "../src", "flatglm")

flatglm_includedirs = {
	path.join(flatglm_root, "include"),
}

flatglm_libdirs = {}
flatglm_links = {}

flatglm_defines = {}

----

return {
	_load_package = function()
		--- obsolete since merged into this repo
		-- if os.isdir(flatglm_root) then
		-- 	os.executef('git -C %s pull', flatglm_root)
		-- else
		-- 	os.executef('git clone https://github.com/KageKirin/flatGLM.git %s', flatglm_root)
		-- end
	end,

	_add_includedirs = function()
		includedirs { flatglm_includedirs }
	end,

	_add_defines = function()
		defines { flatglm_defines }
	end,

	_add_libdirs = function()
		libdirs { flatglm_libdirs }
	end,

	_add_external_links = function()
		links { flatglm_links }
	end,

	_add_self_links = function()
		links { "flatglm" }
	end,

	_create_projects = function()

group "thirdparty"
project "flatglm"
	kind "StaticLib"
	language "C++"
	flags { "CppLatest"}

	defines {
		flatglm_defines,
	}

	includedirs {
		flatglm_includedirs,
		glm_includedirs,
		"../src",
		flatbuffers_includedirs,
		catch2_includedirs,
	}

	files {
		path.join(flatglm_root, "include/**.h"),
		path.join(flatglm_root, "include/**.hpp"),
		path.join(flatglm_root, "include/**.hxx"),
		path.join(flatglm_root, "src/*.cpp"),
		path.join(flatglm_root, "*.cpp"),
	}

	configuration {}

end, -- _create_projects()
}

---
