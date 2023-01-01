COMMENT =	terminal file manager

MODGO_MODNAME = github.com/antonmedv/llama
MODGO_VERSION = v1.4.0

DISTNAME =	llama-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/antonmedv/llama

MAINTAINER =	Gonzalo L. Rodriguez <gonzalo@openbsd.org> \
		Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

.include "modules.inc"

.include <bsd.port.mk>
