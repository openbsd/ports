# $OpenBSD: Makefile,v 1.9 2004/02/02 17:35:01 sturm Exp $

COMMENT=	"multiprotocol traceroute tool"

DISTNAME=	ctrace-0.9
CATEGORIES=	net
HOMEPAGE=	http://www.pratyeka.org/ctrace/

MAINTAINER=	Patroklos Argyroudis <argp@ieee.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}download/

BUILD_DEPENDS=	::net/p5-Net-RawIP \
		::www/p5-libwww
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ctrace ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ctrace.man ${PREFIX}/man/man1/ctrace.1

.include <bsd.port.mk>
