COMMENT =		color management library

DISTNAME =		lcms2-2.16
CATEGORIES =		graphics
SITES =			${SITE_SOURCEFORGE:=lcms/}

SHARED_LIBS +=  lcms2                1.5      # 2.16

HOMEPAGE =		https://www.littlecms.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c jpeg lzma m pthread tiff z zstd

LIB_DEPENDS =	graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
