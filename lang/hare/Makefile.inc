# QBE archs only, maybe?
ONLY_FOR_ARCHS =	amd64 arm64 riscv64

COMMENT ?=	simple, stable, and robust systems programming language
CATEGORIES ?=	lang devel

HOMEPAGE ?=	https://harelang.org/
MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

# Compiler: GPLv3 only
# Runtime: MPL 2.0
PERMIT_PACKAGE ?=	Yes

SITES ?=	https://github.com/ibara/ports/releases/download/v1.0/

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}
