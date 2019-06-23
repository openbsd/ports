# $OpenBSD: Makefile,v 1.45 2019/06/23 22:54:06 naddy Exp $

COMMENT =		convert HTML pages to PDF/PS format

V =			1.8.29
DISTNAME =		htmldoc-${V}
CATEGORIES =		print www
REVISION =		5

HOMEPAGE =		https://www.msweet.org/htmldoc/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto m ssl z jpeg png ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

DISTFILES =		${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES =		https://github.com/michaelrsweet/htmldoc/releases/download/release-${V}/

LIB_DEPENDS =		graphics/jpeg \
			graphics/png

CONFIGURE_STYLE =	gnu dest
CONFIGURE_ARGS +=	--without-gui --disable-gnutls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"
PORTHOME =		${WRKDIR}

post-extract:
	rm -r ${WRKSRC}/jpeg ${WRKSRC}/png ${WRKSRC}/zlib

post-configure:
	@sed -i "s,\\${DESTDIR},," ${WRKSRC}/config.h

NO_TEST =		Yes

.include <bsd.port.mk>
