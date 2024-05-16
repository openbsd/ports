COMMENT =	open-source reimplementation of Impulse Tracker

GH_ACCOUNT =	schismtracker
GH_PROJECT =	schismtracker
GH_TAGNAME =	20240515
REVISION =	0

CATEGORIES =	audio x11

HOMEPAGE =	https://schismtracker.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL2 c m

MODULES =	lang/python

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/sdl2

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ARGS =	--without-flac

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
