# $OpenBSD: Makefile,v 1.5 2000/04/21 14:53:54 kevlo Exp $

DISTNAME=	arpcatch
PKGNAME=	arpcatch
CATEGORIES=	net
NEED_VERSION=	1.191
MASTER_SITES=	http://www.enteract.com/~tqbf/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKDIST=		${WRKDIR}/${PKGNAME}

FAKE=		Yes
ALL_TARGET=
INSTALL_TARGET=	install

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aproxyd ${PREFIX}/sbin/aproxyd 

.include <bsd.port.mk>
