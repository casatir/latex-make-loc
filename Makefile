TARGET_DIR=$(abspath .latex-make-files)

all: latex-make-install

latex-make-install: target-dir
	cd .latex-make/ && make install prefix="$(TARGET_DIR)" texmf_prefix="$(TARGET_DIR)"

target-dir:
	mkdir -p "$(TARGET_DIR)"

clean:
	@rm -rf "$(TARGET_DIR)"
	cd .latex-make/ && make distclean
