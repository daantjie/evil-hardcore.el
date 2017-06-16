all:
	@cask

test: ecukes

ecukes:
	@cask exec ecukes

.PHONY: test ecukes
