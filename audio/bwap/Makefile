# $OpenBSD: Makefile,v 1.1.1.1 2000/06/29 03:31:34 jasoni Exp $

DISTNAME=	BWap-1.3a
PKGNAME=	bwap-1.3a
CATEGORIES=	net
NEED_VERSION=	1.270
MASTER_SITES=	ftp://bitchx.dimension6.com/pub/BWap/

MAINTAINER=	jasoni@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	gnu dest

WRKDIST=	${WRKDIR}/BWap

post-install:
	@ln -s BWap-1.3a ${PREFIX}/bin/bwap

.include <bsd.port.mk>
