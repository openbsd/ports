COMMENT =	terminal user interface for Jujutsu

MODGO_MODNAME =	github.com/idursun/jjui
MODGO_VERSION =	v0.9.10

DISTNAME =	jjui-${MODGO_VERSION}

HOMEPAGE =	https://github.com/idursun/jjui

CATEGORIES =	devel

MAINTAINER =	Theo Buehler <tb@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

TEST_TARGET =	./...

.include "modules.inc"
.include <bsd.port.mk>
