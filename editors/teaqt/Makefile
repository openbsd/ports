COMMENT =	powerful and simple Qt editor

GH_ACCOUNT =	psemiletov
GH_PROJECT =	tea-qt
GH_TAGNAME =	50.0.4
PKGNAME =	teaqt-${GH_TAGNAME}
REVISION =	1

CATEGORIES =	editors x11

HOMEPAGE =	http://semiletov.org/tea/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets
WANTLIB += aspell c djvulibre hunspell-1.7 m poppler-qt5 z

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	graphics/djvulibre \
		print/poppler,-qt5 \
		textproc/aspell/core \
		textproc/hunspell

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic


CFLAGS +=	-I${LOCALBASE}/include
CXXFLAGS +=	-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

NO_TEST =	Yes

.include <bsd.port.mk>
