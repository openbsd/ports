# $OpenBSD: Makefile,v 1.1.1.1 2001/08/14 14:29:12 naddy Exp $

COMMENT=	"multiprotocol traceroute tool"

DISTNAME=	ctrace-0.6
CATEGORIES=	net
NEED_VERSION=	1.402
HOMEPAGE=	http://www.pratyeka.org/ctrace/

MAINTAINER=	Patroklos Argyroudis <argp@bsd.gr>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}download/

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
BUILD_DEPENDS=	${PERL_MODULES}/Net/RawIP.pm::net/p5-Net-RawIP
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ctrace ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ctrace.man ${PREFIX}/man/man1/ctrace.1

.include <bsd.port.mk>
