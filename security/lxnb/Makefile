# $OpenBSD: Makefile,v 1.17 2007/09/15 23:29:58 merdely Exp $

COMMENT=	NetBus client

DISTNAME=       lxnb-0.4
DISTFILES=	linux-netbus-client-v0.4.tgz
CATEGORIES=	security

PERMIT_PACKAGE_CDROM=	no obvious license
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no obvious license
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://ns2.crw.se/~tm/projects/lxnb/

pre-build:
	rm -f ${WRKSRC}/lxnetbus

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lxnetbus ${PREFIX}/bin/lxnb

.include <bsd.port.mk>
