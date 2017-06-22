all:
	@cask

test: ecukes ert

ecukes:
	@cask exec ecukes

ert:
	@cask exec ert-runner

.PHONY: test ecukes
