# OpenBSD makefile for:	xtacy
# Version required:     1.13
# Date created:         December 21, 1997
# Whom:                 Don Schmidt
#
# $OpenBSD: Makefile,v 1.9 2000/08/21 03:33:11 kevlo Exp $
#

DISTNAME=	xtacy114
PKGNAME=	xtacy-1.14
CATEGORIES=	x11
NEED_VERSION=	1.319
MASTER_SITES=	ftp://sidehack.gweep.net/pub/software/ \
		http://www.ultranet.com/~jjohnson/

HOMEPAGE=	http://sidehack.gweep.net/~jer/xtacy.html

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
NO_BUILD=	Yes

WRKDIST=	${WRKDIR}/Xtacy

pre-install:
	@cp ${WRKSRC}/Makefile.orig ${WRKSRC}/Makefile
	@cp ${WRKSRC}/xtacy.man ${PREFIX}/man/man1/xtacy.1

.include <bsd.port.mk>
