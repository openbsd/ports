# $OpenBSD: Makefile,v 1.11 2007/09/15 22:36:52 merdely Exp $

COMMENT=	multiprotocol traceroute tool

DISTNAME=	ctrace-0.9
CATEGORIES=	net
HOMEPAGE=	http://www.pratyeka.org/ctrace/

MAINTAINER=	Patroklos Argyroudis <argp@ieee.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}download/

RUN_DEPENDS=	::net/p5-Net-RawIP \
		::www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ctrace ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ctrace.man ${PREFIX}/man/man1/ctrace.1

.include <bsd.port.mk>
