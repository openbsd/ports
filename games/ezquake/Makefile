# $OpenBSD: Makefile,v 1.3 2018/09/04 12:53:16 espie Exp $

COMMENT =	modern QuakeWorld client
DISTNAME =	ezquake-${GH_TAGNAME}

GH_ACCOUNT =	ezQuake
GH_PROJECT =	ezquake-source
GH_TAGNAME =	3.1
REVISION =	0

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
