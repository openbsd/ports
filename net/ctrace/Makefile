# $OpenBSD: Makefile,v 1.5 2002/05/11 00:31:22 espie Exp $

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

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
BUILD_DEPENDS=	::net/p5-Net-RawIP
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ctrace ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ctrace.man ${PREFIX}/man/man1/ctrace.1

.include <bsd.port.mk>
