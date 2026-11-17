COMMENT =	powerful and simple Qt editor

GH_ACCOUNT =	psemiletov
GH_PROJECT =	tea-qt
GH_TAGNAME =	63.3.1
PKGNAME =	teaqt-${GH_TAGNAME}

CATEGORIES =	editors x11

HOMEPAGE =	http://semiletov.org/tea/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets aspell
WANTLIB += c djvulibre glib-2.0 hunspell-1.7 intl m poppler-cpp

MODULES =	devel/cmake \
		x11/qt6

LIB_DEPENDS =	graphics/djvulibre \
		print/poppler \
		textproc/aspell/core \
		textproc/hunspell

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

CONFIGURE_ARGS =	-DUSE_DJVU=ON \
			-DUSE_ASPELL=ON \
			-DUSE_PDF=ON

NO_TEST =	Yes

.include <bsd.port.mk>
