# $OpenBSD: Makefile,v 1.10 2017/11/15 21:28:05 sthen Exp $

COMMENT=	small daemon for DNSBLs

DISTNAME=	rbldnsd-0.997a
CATEGORIES=	net
REVISION=	2

HOMEPAGE=	http://www.corpit.ru/mjt/rbldnsd.html

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
