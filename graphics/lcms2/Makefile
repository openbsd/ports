COMMENT =		color management library

V =			2.20
DISTNAME =		lcms2-${V}
CATEGORIES =		graphics

SHARED_LIBS +=  	lcms2	3.1	# 2.20

HOMEPAGE =		https://www.littlecms.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c jpeg m pthread tiff z

SITES =	https://github.com/mm2/Little-CMS/releases/download/lcms${V}/

COMPILER =		base-clang ports-gcc

COMPILER_LANGS =	c

MODULES =		devel/cmake

LIB_DEPENDS =		\
			graphics/jpeg \
			graphics/tiff

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
