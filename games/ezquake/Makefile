# $OpenBSD: Makefile,v 1.1.1.1 2018/08/15 22:15:02 bcallah Exp $

COMMENT =	modern QuakeWorld client
DISTNAME =	ezquake-3.1rc2

GH_ACCOUNT =	ezQuake
GH_PROJECT =	ezquake-source
GH_COMMIT =	c0a4d0eaf3f1c12bcb43a028a4f75c533a0a0b1e

CATEGORIES =	games

HOMEPAGE =	https://ezquake.github.io/
MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL2 c curl expat jansson jpeg m pcre png pthread
WANTLIB += speex speexdsp z

LIB_DEPENDS =	audio/speex \
		graphics/jpeg \
		graphics/png \
		devel/sdl2 \
		devel/jansson \
		devel/pcre \
		net/curl

USE_GMAKE =	Yes
MAKE_ENV =	V=1

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ezquake ${PREFIX}/bin

.include <bsd.port.mk>
