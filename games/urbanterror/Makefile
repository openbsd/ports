# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:26 sthen Exp $

ONLY_FOR_ARCHS = amd64 i386

COMMENT = 	fast-paced hollywood-tactical shooter: "fun over realism"
DISTNAME =	urbanterror-4.3.4

GH_ACCOUNT =	Barbatos
GH_PROJECT =	ioq3-for-UrbanTerror-4
GH_TAGNAME =	release-4.3.4

CATEGORIES =	games x11

HOMEPAGE =	http://urbanterror.info/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xxf86vm c m pthread SDL

LIB_DEPENDS =	devel/sdl
RUN_DEPENDS =	games/urbanterror-data \
		net/curl

USE_GMAKE =	Yes
ALL_TARGET =    release

MAKE_ENV =	V=1 \
		DEFAULT_BASEDIR=${TRUEPREFIX}/share/urbanterror

do-install:
	${INSTALL_PROGRAM} \
		${WRKBUILD}/build/release-openbsd/Quake3-UrT \
		${PREFIX}/bin/urbanterror
	${INSTALL_PROGRAM} \
		${WRKBUILD}/build/release-openbsd/Quake3-UrT-Ded \
		${PREFIX}/bin/urbanterror-ded

.include <bsd.port.mk>
