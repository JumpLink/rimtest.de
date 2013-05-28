LESS ?= ./less/all.less
CSS ?= ./css/style.css
CSS_MIN ?= ./css/style.min.css

PATH := ./bootstrap/node_modules/.bin:$(PATH)


#
# BUILD DOCS
#

css:
	@printf "Compiling LESS with Recess..."
	@recess --compile ${LESS} > ${CSS}

.PHONY: css
