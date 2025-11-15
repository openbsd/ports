COMMENT =		COLLADA Document Object Model

DISTNAME =		collada-dom-2.4.0

SHARED_LIBS +=  collada-dom2.4-dp         0.0 # 0.0

CATEGORIES =		graphics

HOMEPAGE =		https://www.khronos.org/collada/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_filesystem-mt
WANTLIB += boost_system-mt m minizip pcre pcrecpp xml2 z

SITES =			${SITE_SOURCEFORGE:=collada-dom/}
EXTRACT_SUFX =		.tgz

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		devel/boost \
			archivers/minizip \
			devel/pcre \
			textproc/libxml

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -std=c++14 -Wno-int-conversion"

NO_TEST =		Yes

.include <bsd.port.mk>
