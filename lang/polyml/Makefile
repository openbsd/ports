# changes in base needed for !amd64
ONLY_FOR_ARCHS = amd64

COMMENT =	Poly/ML implementation of standard ML

GH_ACCOUNT =	polyml
GH_PROJECT =	polyml
GH_TAGNAME =	v5.9.2

USE_NOEXECONLY =	Yes
USE_NOBTCFI =		Yes

SHARED_LIBS +=	polyml		1.0 # 16.0

CATEGORIES =	lang

HOMEPAGE =	https://polyml.org/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

COMPILER = base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext Xft Xm Xmu Xrender
WANTLIB += Xt c expat fontconfig freetype gmp iconv jpeg m png
WANTLIB += xcb z

LIB_DEPENDS =	converters/libiconv \
		devel/gmp \
		graphics/jpeg \
		graphics/png \
		x11/motif

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-x=yes
CONFIGURE_ENV =		ac_cv_prog_gitinstalled=no \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

ALL_TARGET =		compiler

.include <bsd.port.mk>
