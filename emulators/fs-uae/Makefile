# $OpenBSD: Makefile,v 1.29 2018/10/24 14:28:01 sthen Exp $

BROKEN-powerpc =	error: invalid 'asm': invalid %k value
BROKEN-alpha =		error: invalid 'asm': invalid %xn code

COMMENT =		modern Amiga emulator
V =			2.4.0
MODPY_EGG_VERSION =	${V}
DISTNAME =		fs-uae-$V
CATEGORIES =		emulators
REVISION =		9

HOMEPAGE =		http://fengestad.no/fs-uae/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2, LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL X11 c freetype glib-2.0 gthread-2.0 intl m
WANTLIB += openal png pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${HOMEPAGE}stable/$V/

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/sdl \
			graphics/png \
			audio/openal \
			devel/glib2
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE =		Yes

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CXXFLAGS =		-std=c++03
.endif

MAKE_FLAGS +=		prefix=${PREFIX} CXXFLAGS="${CXXFLAGS}"
MAKE_FLAGS +=		CFLAGS="${CFLAGS}" CXX="${CXX}"

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fs-uae
	mv ${PREFIX}/share/doc/fs-uae/example.conf \
		${PREFIX}/share/examples/fs-uae/fs-uae.conf
	${SUBST_CMD} ${PREFIX}/share/examples/fs-uae/fs-uae.conf

.include <bsd.port.mk>
