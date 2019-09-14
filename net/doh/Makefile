# $OpenBSD: Makefile,v 1.2 2019/09/14 23:41:56 sthen Exp $

COMMENT=	simple DoH (dns-over-https) client

GH_ACCOUNT=	curl
GH_PROJECT=	doh
GH_COMMIT=	541073829865a72963d80e0efbb13382a3447621

DISTNAME=	doh-0.20190913
REVISION=	0

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
