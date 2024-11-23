COMMENT =		convert HTML pages to PDF/PS format

V =			1.9.19
DISTNAME =		htmldoc-${V}
CATEGORIES =		print www

HOMEPAGE =		https://www.msweet.org/htmldoc/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c cups jpeg m png z

COMPILER =		base-clang ports-gcc base-gcc

DISTFILES =		${DISTNAME}-source${EXTRACT_SUFX}
SITES =	https://github.com/michaelrsweet/htmldoc/releases/download/v${V}/

LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			print/cups,-libs

CONFIGURE_STYLE =	gnu dest
CONFIGURE_ARGS +=	--without-gui --disable-gnutls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

NO_TEST =		Yes

.include <bsd.port.mk>
