# $OpenBSD: Makefile,v 1.14 2010/10/18 18:36:46 espie Exp $

COMMENT=	multiprotocol traceroute tool

DISTNAME=	ctrace-0.9
REVISION=	0
CATEGORIES=	net
HOMEPAGE=	http://www.pratyeka.org/ctrace/

MAINTAINER=	Patroklos Argyroudis <argp@ieee.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}download/

RUN_DEPENDS=	::devel/p5-List-MoreUtils \
		::net/p5-Net-RawIP \
		::www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_GROFF =	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ctrace ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ctrace.man ${PREFIX}/man/man1/ctrace.1

.include <bsd.port.mk>
