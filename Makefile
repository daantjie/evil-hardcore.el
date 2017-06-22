all:
	@cask

test: ert ecukes

ecukes:
	@cask exec ecukes

ert:
	@cask exec ert-runner

.PHONY: test ecukes ert
