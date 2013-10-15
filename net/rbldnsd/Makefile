# $OpenBSD: Makefile,v 1.7 2013/10/15 01:18:00 william Exp $

COMMENT=	small daemon for DNSBLs

DISTNAME=	rbldnsd-0.997a
CATEGORIES=	net

HOMEPAGE=	http://www.corpit.ru/mjt/rbldnsd.html

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=	http://www.corpit.ru/mjt/rbldnsd/

CONFIGURE_STYLE=simple
WRKDIST=	${WRKDIR}/${DISTNAME:S/rbldnsd_/rbldnsd-/}
RBLDNSD_BASE=	${VARBASE}/rbldnsd
SUBST_VARS=	VARBASE RBLDNSD_BASE

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rbldnsd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/rbldnsd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
