# $OpenBSD: Makefile,v 1.9 2000/10/22 16:21:18 espie Exp $

VER=		1.0.9
PKGNAME=	fltk-${VER}
DISTNAME=	${PKGNAME}-source

CATEGORIES=	x11
NEED_VERSION=	1.319

HOMEPAGE=	http://www.fltk.org/

MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.fltk.org/pub/fltk/${VER}/

CONFIGURE_STYLE=gnu dest
WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>

