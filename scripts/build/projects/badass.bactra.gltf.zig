// badass.bactra.gltf.zig generated by GENie

const std = @import("std");
const builtin = @import("builtin");
const Builder = std.build.Builder;

pub fn build(b: *Builder, target : std.zig.CrossTarget,  mode : std.builtin.Mode) void {
    if (mode == std.builtin.Mode.Debug) {
        const prj = b.addStaticLibrary("badass.bactra.gltf", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.linkLibCpp();
        prj.linkSystemLibrary("c++");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/include");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/grpc");
        prj.addIncludeDir("../../../libs/glm/glm");
        prj.addIncludeDir("../../../libs/fmt/fmt/include");
        prj.addIncludeDir("../../../libs/catch2/catch2/single_include");
        prj.addIncludeDir("../../../libs/ranges/ranges-v3/include");
        prj.addIncludeDir("../../../libs/cgltf/cgltf");
        prj.addIncludeDir("../../../src/flatglm/include");
        prj.addIncludeDir("../../../src/flatgltf/include");
        prj.addIncludeDir("../../../src");
        prj.addIncludeDir("../../../src/bactra");
        prj.defineCMacroRaw("DEBUG");
        prj.defineCMacroRaw("_DEBUG");
        prj.defineCMacroRaw("GLM_FORCE_SWIZZLE=1");
        prj.defineCMacroRaw("CATCH_CONFIG_ENABLE_BENCHMARKING");
        prj.defineCMacroRaw("WITH_DEBUG_PRINT");
        prj.defineCMacroRaw("PLATFORM_MACOS");
        prj.addCSourceFiles(&.{
            "../../../src/bactra/gltf/BGLTFanimation.cpp",
            "../../../src/bactra/gltf/BGLTFmaterial.cpp",
            "../../../src/bactra/gltf/BGLTFutils.cpp",
            "../../../src/bactra/gltf/BGLTFtexture.cpp",
            "../../../src/bactra/gltf/BGLTFapi.cpp",
            "../../../src/bactra/gltf/gltf_binary.cpp",
            "../../../src/bactra/gltf/BGLTFasset.cpp",
            "../../../src/bactra/gltf/BGLTFmesh.cpp",
            "../../../src/bactra/gltf/BGLTFskeleton.cpp",
            "../../../src/bactra/gltf/BGLTFoptimize.cpp",
        },
        &.{
            "-g",
            "-Wall -Wextra",
            "-fdiagnostics-fixit-info",
            "-fdiagnostics-color",
            "-fdiagnostics-show-note-include-stack",
            "-Wextra-tokens",
            "-Wno-undef",
            "-fblocks",
            "-Rpass=inline",
        });
    }
    if (mode == std.builtin.Mode.ReleaseFast) {
        const prj = b.addStaticLibrary("badass.bactra.gltf", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.linkLibCpp();
        prj.linkSystemLibrary("c++");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/include");
        prj.addIncludeDir("../../../libs/flatbuffers/flatbuffers/grpc");
        prj.addIncludeDir("../../../libs/glm/glm");
        prj.addIncludeDir("../../../libs/fmt/fmt/include");
        prj.addIncludeDir("../../../libs/catch2/catch2/single_include");
        prj.addIncludeDir("../../../libs/ranges/ranges-v3/include");
        prj.addIncludeDir("../../../libs/cgltf/cgltf");
        prj.addIncludeDir("../../../src/flatglm/include");
        prj.addIncludeDir("../../../src/flatgltf/include");
        prj.addIncludeDir("../../../src");
        prj.addIncludeDir("../../../src/bactra");
        prj.defineCMacroRaw("RELEASE");
        prj.defineCMacroRaw("NDEBUG");
        prj.defineCMacroRaw("GLM_FORCE_SWIZZLE=1");
        prj.defineCMacroRaw("CATCH_CONFIG_ENABLE_BENCHMARKING");
        prj.defineCMacroRaw("PLATFORM_MACOS");
        prj.addCSourceFiles(&.{
            "../../../src/bactra/gltf/BGLTFanimation.cpp",
            "../../../src/bactra/gltf/BGLTFmaterial.cpp",
            "../../../src/bactra/gltf/BGLTFutils.cpp",
            "../../../src/bactra/gltf/BGLTFtexture.cpp",
            "../../../src/bactra/gltf/BGLTFapi.cpp",
            "../../../src/bactra/gltf/gltf_binary.cpp",
            "../../../src/bactra/gltf/BGLTFasset.cpp",
            "../../../src/bactra/gltf/BGLTFmesh.cpp",
            "../../../src/bactra/gltf/BGLTFskeleton.cpp",
            "../../../src/bactra/gltf/BGLTFoptimize.cpp",
        },
        &.{
            "-Os",
            "-Wall -Wextra",
            "-fdiagnostics-fixit-info",
            "-fdiagnostics-color",
            "-fdiagnostics-show-note-include-stack",
            "-Wextra-tokens",
            "-Wno-undef",
            "-fblocks",
            "-Rpass=inline",
        });
    }
} // build