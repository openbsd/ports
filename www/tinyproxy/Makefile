# $OpenBSD: Makefile,v 1.18 2009/04/11 23:54:12 sthen Exp $

COMMENT=		lightweight HTTP/SSL proxy

VERSION=		1.6.4
DISTNAME=		tinyproxy-${VERSION}
CATEGORIES=		www net

HOMEPAGE=		https://www.banu.com/tinyproxy/
MASTER_SITES=		https://www.banu.com/pub/tinyproxy/1.6/
MAINTAINER=		frantisek holop <minusf@obiit.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-config=${SYSCONFDIR}/tinyproxy/tinyproxy.conf

REGRESS_TARGET=		check

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/tinyproxy ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/doc/tinyproxy.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tinyproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tinyproxy
	${INSTALL_DATA} ${WRKSRC}/doc/{debug,default,stats}.html \
		${PREFIX}/share/doc/tinyproxy
	${INSTALL_DATA} ${WRKSRC}/doc/tinyproxy.conf \
		${PREFIX}/share/examples/tinyproxy

.include <bsd.port.mk>
