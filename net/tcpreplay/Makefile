# $OpenBSD: Makefile,v 1.12 2001/02/26 03:28:03 brad Exp $

DISTNAME=	tcpreplay-1.0.1
CATEGORIES=	net
NEED_VERSION=	1.336
MASTER_SITES=	http://www.anzen.com/research/nidsbench/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpreplay ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/tcpreplay.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
