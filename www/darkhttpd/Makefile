# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:18 sthen Exp $

COMMENT=		simple and small webserver intended for ad-hoc usage

DISTNAME =		darkhttpd-1.12
CATEGORIES=		www

HOMEPAGE=		http://unix4lyfe.org/darkhttpd/

# ISC
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

WANTLIB=		c

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/darkhttpd ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/darkhttpd/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/darkhttpd/

.include <bsd.port.mk>
