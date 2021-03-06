// badass.require.unittest.zig generated by GENie

const std = @import("std");
const builtin = @import("builtin");
const Builder = std.build.Builder;

pub fn build(b: *Builder, target : std.zig.CrossTarget,  mode : std.builtin.Mode) void {
    if (mode == std.builtin.Mode.Debug) {
        const prj = b.addExecutable("badass.require.unittest", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../../../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.linkLibCpp();
        prj.linkSystemLibrary("c++");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/catch2/catch2/single_include");
        prj.addIncludeDir("../../../src/require");
        prj.addIncludeDir("../../../src/lon");
        prj.addIncludeDir("../../../src/glm_extensions");
        prj.addLibPath("../bin/darwin");
        prj.addFrameworkDir("../bin/darwin");
        prj.defineCMacroRaw("DEBUG");
        prj.defineCMacroRaw("_DEBUG");
        prj.defineCMacroRaw("CATCH_CONFIG_ENABLE_BENCHMARKING");
        prj.defineCMacroRaw("WITH_DEBUG_PRINT");
        prj.defineCMacroRaw("PLATFORM_MACOS");
        prj.addCSourceFiles(&.{
            "../../../src/tests/require_test.cpp",
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
        prj.linkFramework("badass.gitrev");
        prj.linkFramework("badass.require");
        prj.linkFramework("badass.lon");
        prj.linkFramework("badass.glm_extensions");
        prj.install();
    }
    if (mode == std.builtin.Mode.ReleaseFast) {
        const prj = b.addExecutable("badass.require.unittest", null);
        prj.setTarget(target);
        prj.setBuildMode(mode);
        prj.setOutputDir("../../../bin/darwin");
        prj.linkLibC();
        prj.linkSystemLibrary("c");
        prj.linkLibCpp();
        prj.linkSystemLibrary("c++");
        prj.setVerboseCC(true);
        prj.setVerboseLink(true);
        prj.force_pic = true;
        prj.addIncludeDir("../../../libs/catch2/catch2/single_include");
        prj.addIncludeDir("../../../src/require");
        prj.addIncludeDir("../../../src/lon");
        prj.addIncludeDir("../../../src/glm_extensions");
        prj.addLibPath("../bin/darwin");
        prj.addFrameworkDir("../bin/darwin");
        prj.defineCMacroRaw("RELEASE");
        prj.defineCMacroRaw("NDEBUG");
        prj.defineCMacroRaw("CATCH_CONFIG_ENABLE_BENCHMARKING");
        prj.defineCMacroRaw("PLATFORM_MACOS");
        prj.addCSourceFiles(&.{
            "../../../src/tests/require_test.cpp",
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
        prj.linkFramework("badass.gitrev");
        prj.linkFramework("badass.require");
        prj.linkFramework("badass.lon");
        prj.linkFramework("badass.glm_extensions");
        prj.install();
    }
} // build
