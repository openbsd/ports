# $OpenBSD: Makefile,v 1.6 2002/06/07 21:37:11 wilfried Exp $

COMMENT=	"multiprotocol traceroute tool"

DISTNAME=	ctrace-0.8
CATEGORIES=	net
NEED_VERSION=	1.515
HOMEPAGE=	http://www.pratyeka.org/ctrace/

MAINTAINER=	Patroklos Argyroudis <argp@ieee.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}download/

BUILD_DEPENDS=	::net/p5-Net-RawIP
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ctrace ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ctrace.man ${PREFIX}/man/man1/ctrace.1

.include <bsd.port.mk>
