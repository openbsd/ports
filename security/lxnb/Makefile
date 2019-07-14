# $OpenBSD: Makefile,v 1.19 2019/07/14 00:39:39 naddy Exp $

COMMENT=	NetBus client

DISTNAME=       lxnb-0.4
DISTFILES=	linux-netbus-client-v0.4.tgz
CATEGORIES=	security

PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	http://ns2.crw.se/~tm/projects/lxnb/

pre-build:
	rm -f ${WRKSRC}/lxnetbus

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lxnetbus ${PREFIX}/bin/lxnb

.include <bsd.port.mk>
