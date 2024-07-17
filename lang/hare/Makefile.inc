# QBE archs only, maybe?
ONLY_FOR_ARCHS =	amd64 arm64 riscv64

COMMENT ?=	simple, stable, and robust systems programming language
CATEGORIES ?=	lang devel

HOMEPAGE ?=	https://harelang.org/
MAINTAINER ?=	Lorenz (xha) <me@xha.li>
V ?=		0.24.2
REVISION ?=	0

# Compiler: GPLv3 only
# Runtime: MPL 2.0
PERMIT_PACKAGE ?=	Yes

SITES ?=	https://git.sr.ht/~sircmpwn/

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}
