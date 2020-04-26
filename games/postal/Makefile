# $OpenBSD: Makefile,v 1.8 2020/04/26 00:58:20 kmos Exp $

# colors are off on big endian architectures
NOT_FOR_ARCHS =	${BE_ARCHS}

V =		20171127
COMMENT =	Postal 1, the non-stop killing isometric shooter game
DISTNAME =	postal-1-open-source-${V}
PKGNAME =	postal-${V}
REVISION =	3
CATEGORIES =	games x11

HOMEPAGE =	http://runningwithscissors.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c m

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

# base-gcc not good enough (tested on armv7)
COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS =	devel/sdl2

USE_GMAKE =	Yes
MAKE_FILE =	makefile
MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" LINKER="${CXX}" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST =	Yes

# No upstream install target.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/postal1 ${PREFIX}/bin

.include <bsd.port.mk>
