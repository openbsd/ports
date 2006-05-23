# $OpenBSD: Makefile,v 1.1.1.1 2006/05/23 05:53:07 alek Exp $

COMMENT=	"small daemon for DNSBLs"

DISTNAME=	rbldnsd_0.996
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	net

HOMEPAGE=	http://www.corpit.ru/mjt/rbldnsd.html

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MASTER_SITES=	http://www.corpit.ru/mjt/rbldnsd/ \
		http://openbsd.rutgers.edu/

CONFIGURE_STYLE=simple
WRKDIST=	${WRKDIR}/${DISTNAME:S/rbldnsd_/rbldnsd-/}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rbldnsd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/rbldnsd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
