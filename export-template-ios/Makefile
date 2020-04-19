GODOT_PROJ_PATH ?= ../../godot

GODOT_TEMPLATE_BUILD_DIR ?= build

GODOT_TEMPLATE_DIR ?= ~/Library/Application\ Support/Godot/templates
GODOT_VER ?= 3.2.2.beta


.PHONY:build-export-template-debug-ios
build-export-template-debug-ios:
	rm -rf $(GODOT_TEMPLATE_BUILD_DIR)
	mkdir $(GODOT_TEMPLATE_BUILD_DIR)
	cp -r $(GODOT_PROJ_PATH)/misc/dist/ios_xcode/* $(GODOT_TEMPLATE_BUILD_DIR)
	cp $(GODOT_PROJ_PATH)/bin/*.arm64.a $(GODOT_TEMPLATE_BUILD_DIR)
	mv $(GODOT_TEMPLATE_BUILD_DIR)/libgodot.iphone.debug.arm64.a $(GODOT_TEMPLATE_BUILD_DIR)/libgodot.iphone.debug.fat.a
	mv $(GODOT_TEMPLATE_BUILD_DIR)/libgodot_arkit_module.iphone.debug.arm64.a $(GODOT_TEMPLATE_BUILD_DIR)/libgodot_arkit_module.iphone.debug.fat.a
	mv $(GODOT_TEMPLATE_BUILD_DIR)/libgodot_camera_module.iphone.debug.arm64.a $(GODOT_TEMPLATE_BUILD_DIR)/libgodot_camera_module.iphone.debug.fat.a
	@#tree -ha $(GODOT_TEMPLATE_BUILD_DIR)
	$(MAKE) zip-iphone-template

zip-iphone-template:
	rm -f $(GODOT_TEMPLATE_BUILD_DIR)/iphone.zip
	cd $(GODOT_TEMPLATE_BUILD_DIR); zip -r -n .a iphone.zip .

.PHONY:copy-export-template-debug-ios-to-godot
copy-export-template-debug-ios-to-godot:
	-mkdir $(GODOT_TEMPLATE_DIR)/$(GODOT_VER)
	cp $(GODOT_TEMPLATE_BUILD_DIR)/iphone.zip $(GODOT_TEMPLATE_DIR)/$(GODOT_VER)
	ls -l $(GODOT_TEMPLATE_DIR)/$(GODOT_VER)

.PHONY:build-and-copy-export-template-debug-ios-to-godot
build-and-copy-export-template-debug-ios-to-godot:
	$(MAKE) build-export-template-debug-ios
	$(MAKE) copy-export-template-debug-ios-to-godot


