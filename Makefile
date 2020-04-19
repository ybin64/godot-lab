GODOT_PROJ_PATH ?= ../godot

.PHONY:build-godot-debug
build-godot-debug:
	$(MAKE) build-godot-debug-macos
	$(MAKE) build-godot-debug-ios
	$(MAKE) build-export-template-debug-ios


.PHONY:build-godot-debug-macos
build-godot-debug-macos:
	cd $(GODOT_PROJ_PATH); \
		scons platform=osx target=debug bits=64 -j 8

.PHONY:build-godot-debug-ios
build-godot-debug-ios:
	cd $(GODOT_PROJ_PATH); \
		scons platform=iphone target=debug bits=64 -j 8

.PHONY:clean-build-godot
clean-build-godot:
	cd $(GODOT_PROJ_PATH); \
		scons platform=osx --clean; \
		scons platform=iphone --clean

.PHONY:build-export-template-debug-ios
build-export-template-debug-ios:
	make -C export-template-ios build-export-template-debug-ios

.PHONY:copy-export-template-debug-ios-to-godot
copy-export-template-debug-ios-to-godot:
	make -C export-template-ios copy-export-template-debug-ios-to-godot





.PHONY:start-godot
start-godot:
	$(GODOT_PROJ_PATH)/bin/godot.osx.tools.64



