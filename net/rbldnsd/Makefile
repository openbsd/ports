# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:56 espie Exp $

COMMENT=	small daemon for DNSBLs

DISTNAME=	rbldnsd_0.996b
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	net

HOMEPAGE=	http://www.corpit.ru/mjt/rbldnsd.html

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=	http://www.corpit.ru/mjt/rbldnsd/ \
		http://openbsd.rutgers.edu/

CONFIGURE_STYLE=simple
WRKDIST=	${WRKDIR}/${DISTNAME:S/rbldnsd_/rbldnsd-/}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rbldnsd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/rbldnsd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
