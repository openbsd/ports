# $OpenBSD: Makefile,v 1.8 2003/03/31 01:39:24 margarida Exp $

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

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ctrace ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ctrace.man ${PREFIX}/man/man1/ctrace.1

.include <bsd.port.mk>
