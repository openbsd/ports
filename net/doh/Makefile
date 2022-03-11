COMMENT=	simple DoH (dns-over-https) client

GH_ACCOUNT=	curl
GH_PROJECT=	doh
GH_COMMIT=	acc9ab52d068e388570d4076f926eb024c2e2479

DISTNAME=	doh-0.20191105

CATEGORIES=	net

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto curl nghttp2 ssl z

ALL_TARGET=	doh
MAKE_ENV=	COPTFLAGS="${CFLAGS}" CC="${CC}"
LIB_DEPENDS=	net/curl
NO_TEST=	Yes
USE_GMAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/doh ${PREFIX}/bin/doh
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/doh
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/doh/

.include <bsd.port.mk>
