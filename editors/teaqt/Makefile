# $OpenBSD: Makefile,v 1.28 2020/02/22 00:54:02 sthen Exp $

COMMENT =	powerful and simple Qt editor

GH_ACCOUNT =	psemiletov
GH_PROJECT =	tea-qt
GH_TAGNAME =	50.0.4
PKGNAME =	teaqt-${GH_TAGNAME}

CATEGORIES =	editors x11

HOMEPAGE =	http://semiletov.org/tea/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets
WANTLIB += aspell c djvulibre hunspell-1.6 m poppler-qt5 z

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	graphics/djvulibre \
		print/poppler,-qt5 \
		textproc/aspell/core \
		textproc/hunspell

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic


CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS} \
				-I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} \
				-I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} \
				-L${LOCALBASE}/lib"

NO_TEST =	Yes

.include <bsd.port.mk>
