COMMENT =	scheme subset for atmel microcontrollers
DISTNAME =	microscheme-0.9.4
REVISION =	0
CATEGORIES =	lang

GH_ACCOUNT =	ryansuchocki
GH_PROJECT =	microscheme
GH_TAGNAME =	v0.9.4

HOMEPAGE =	https://ryansuchocki.github.io/microscheme/
MAINTAINER =	James Turner <james@calminferno.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c

# vim is needed for xxd
BUILD_DEPENDS =	editors/vim,-main
MAKE_FILE =	makefile
ALL_TARGET =	build

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
