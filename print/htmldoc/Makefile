# $OpenBSD: Makefile,v 1.48 2020/06/13 15:11:39 benoit Exp $

COMMENT =		convert HTML pages to PDF/PS format

V =			1.9.9
DISTNAME =		htmldoc-${V}
CATEGORIES =		print www

HOMEPAGE =		https://www.msweet.org/htmldoc/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto m ssl z jpeg png ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

DISTFILES =		${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES =		https://github.com/michaelrsweet/htmldoc/releases/download/v${V}/

LIB_DEPENDS =		graphics/jpeg \
			graphics/png

CONFIGURE_STYLE =	gnu dest
CONFIGURE_ARGS +=	--without-gui --disable-gnutls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-extract:
	rm -r ${WRKSRC}/jpeg ${WRKSRC}/png ${WRKSRC}/zlib

NO_TEST =		Yes

.include <bsd.port.mk>
