-- package geniefile for flatgltf

flatgltf_script = path.getabsolute(path.getdirectory(_SCRIPT))
flatgltf_root = path.join(flatgltf_script, "../src", "flatgltf")

flatgltf_includedirs = {
	path.join(flatgltf_root, "include"),
}

flatgltf_libdirs = {}
flatgltf_links = {}

flatgltf_defines = {}

----

return {
	_load_package = function()
		--- obsolete since merged into this repo
		-- if os.isdir(flatgltf_root) then
		-- 	os.executef('git -C %s pull', flatgltf_root)
		-- else
		-- 	os.executef('git clone https://github.com/KageKirin/flatGLTF.git %s', flatgltf_root)
		-- end
	end,

	_add_includedirs = function()
		includedirs { flatgltf_includedirs }
	end,

	_add_defines = function()
		defines { flatgltf_defines }
	end,

	_add_libdirs = function()
		libdirs { flatgltf_libdirs }
	end,

	_add_external_links = function()
		links { flatgltf_links }
	end,

	_add_self_links = function()
		links { "flatgltf" }
	end,

	_create_projects = function()

group "thirdparty"
project "flatgltf"
	kind "StaticLib"
	language "C++"
	flags { "CppLatest"}

	defines {
		flatgltf_defines,
	}

	includedirs {
		flatgltf_includedirs,
		"../src",
		flatglm_includedirs,
		flatbuffers_includedirs,
		glm_includedirs,
		fmt_includedirs,
		catch2_includedirs,
	}

	files {
		path.join(flatgltf_root, "include/**.h"),
		path.join(flatgltf_root, "include/**.hpp"),
		path.join(flatgltf_root, "src/**.cpp"),
		path.join(flatgltf_root, "src/**.cxx"),
	}

	removefiles {
		path.join(flatgltf_root, "test/flatgltf_2_0_loader.cpp"),
	}

	configuration {}

end, -- _create_projects()
}

---
