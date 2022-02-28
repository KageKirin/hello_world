## formatting makerules

ALL_SOURCE_FILES = \
	$(shell fd ".*\.h$$"     -- src)       \
	$(shell fd ".*\.c$$"     -- src)       \
	$(shell fd ".*\.hpp$$"   -- src)       \
	$(shell fd ".*\.cpp$$"   -- src)       \
	$(shell fd ".*\.inl$$"   -- src)

ALL_TRACKED_FILES = \
	$(shell git ls-files -- src | rg ".*\.h$$")         \
	$(shell git ls-files -- src | rg ".*\.c$$")         \
	$(shell git ls-files -- src | rg ".*\.hpp$$")       \
	$(shell git ls-files -- src | rg ".*\.cpp$$")       \
	$(shell git ls-files -- src | rg ".*\.inl$$")

ALL_MODIFIED_FILES = \
	$(shell git ls-files -m -- src)

build-db: compile_commands.json

compile_commands.json:
	ninja -C build/ninja.darwin/$(CONFIG) -t compdb > $@

format-all: build-db _format-all
_format-all: $(ALL_SOURCE_FILES)
	clang-tidy --fix --fix-errors $^
	clang-format -i $^

format: build-db _format
_format: $(ALL_TRACKED_FILES)
	clang-tidy --fix --fix-errors $^
	clang-format -i $^

t tidy: build-db _tidy
_tidy: $(ALL_MODIFIED_FILES)
	clang-tidy --fix --fix-errors $^
	clang-format -i $^

q qformat: build-db _qformat
_qformat: $(ALL_MODIFIED_FILES)
	clang-format -i $^
