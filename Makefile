CWD = $(CURDIR)

KM_NAME = myalt

QMK_BASE_PATH = ~/qmk_firmware/
MDLOADER_BASE_PATH = ~/.mdloader/

MDLOADER_BUILD_PATH = $(MDLOADER_BASE_PATH)build/
QMK_BUILD_PATH = $(QMK_BASE_PATH).build/
FW_BIN_NAME = massdrop_alt_$(KM_NAME).bin

ALT_KEYBOARD_ROOT_PATH = $(QMK_BASE_PATH)keyboards/massdrop/alt/
ALT_KEYMAP_PATH = $(ALT_KEYBOARD_ROOT_PATH)keymaps/

build:
	git clone git@github.com:Massdrop/mdloader.git $(MDLOADER_PATH)
	cd $(MDLOADER_PATH) && make

link:
	ln -s $(CWD)/$(KM_NAME) $(ALT_KEYMAP_PATH)

compile:
	@rm -rf $(QMK_BUILD_PATH)
	@rm -rf $(MDLOADER_BUILD_PATH)$(FW_BIN_NAME)
	qmk compile -kb massdrop/alt -km $(KM_NAME)
	cp $(QMK_BUILD_PATH)$(FW_BIN_NAME) $(MDLOADER_BUILD_PATH)

flash:
	cd $(MDLOADER_BUILD_PATH) && ./mdloader -f -D $(FW_BIN_NAME) --restart
	cd $(CWD)

aio:
	make compile && make flash
