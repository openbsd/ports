COMMENT =		identify control points from groups of overlapping images

DISTNAME =		autopano-sift-C-2.5.1
REVISION=		5
PKGNAME =		${DISTNAME:L}

CATEGORIES =		graphics

HOMEPAGE =		https://hugin.sourceforge.net/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c jpeg m pano13 png pthread ${COMPILER_LIBCXX} tiff xml2 z

COMPILER =		base-clang ports-gcc base-gcc

SITES =			${SITE_SOURCEFORGE:=hugin/}

LIB_DEPENDS =		graphics/jpeg \
			graphics/libpano13 \
			graphics/png \
			graphics/tiff \
			textproc/libxml

MODULES +=		devel/cmake

NO_TEST =		Yes

FIX_CRLF_FILES =	CMakeLists.txt APSCpp/APSCpp.c

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeModules/FindPNG.cmake

.include <bsd.port.mk>
