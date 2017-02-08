# $OpenBSD: Makefile,v 1.4 2017/02/08 12:55:18 sthen Exp $

USE_WXNEEDED =	Yes
ONLY_FOR_ARCHS = amd64 i386

COMMENT = 	fast-paced hollywood-tactical shooter: "fun over realism"
DISTNAME =	urbanterror-4.3.2

GH_ACCOUNT =	Barbatos
GH_PROJECT =	ioq3-for-UrbanTerror-4
GH_TAGNAME =	release-4.3.2

CATEGORIES =	games x11

HOMEPAGE =	http://urbanterror.info/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xxf86vm c m pthread SDL

LIB_DEPENDS =	devel/sdl
RUN_DEPENDS =	games/urbanterror-data \
		net/curl
# using clang's integrated assembler for %xmm (code/qcommon/snapvector_sse.c)
MODULES =	lang/clang
MODCLANG_ARCHS = i386

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
