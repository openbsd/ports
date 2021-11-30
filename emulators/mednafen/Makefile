# $OpenBSD: Makefile,v 1.34 2021/11/30 12:46:05 op Exp $

BROKEN-hppa =	../../include/mednafen/state.h:21:7: error: 'exception_ptr' in namespace 'std' does not name a type
COMMENT =	emulates numerous game consoles

VERSION =	1.28.0-UNSTABLE
DISTNAME =	mednafen-${VERSION}
PKGNAME =	mednafen-${VERSION:C/-UNSTABLE//}

CATEGORIES =	emulators games
HOMEPAGE =	https://mednafen.github.io

MAINTAINER =	Ricardo Mestre <mestre@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${HOMEPAGE}/releases/files/
EXTRACT_SUFX =	.tar.xz

WANTLIB += FLAC SDL2 c iconv intl m pthread z ${COMPILER_LIBCXX}

USE_GMAKE =	Yes
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	audio/flac \
		devel/gettext,-runtime \
		devel/sdl2

WRKDIST =	${WRKDIR}/mednafen

USE_WXNEEDED =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL2" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread -nopie"
CONFIGURE_ARGS =	--disable-alsa \
			--disable-rpath \
			--disable-jack \
			--with-gnu-ld

# this intrinsic is not supported with our old gcc on powerpc.
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--disable-altivec
.endif

pre-configure:
	sed -i.beforesubst 's/^__inline//' ${WRKDIST}/src/quicklz/quicklz.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mednafen
	${INSTALL_DATA} ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/mednafen/

.include <bsd.port.mk>
