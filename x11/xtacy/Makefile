# OpenBSD makefile for:	xtacy
# Version required:     1.13
# Date created:         December 21, 1997
# Whom:                 Don Schmidt
#
# $OpenBSD: Makefile,v 1.10 2001/03/12 13:44:12 wilfried Exp $
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
CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}/Xtacy

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xtacy ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xtacy.man ${PREFIX}/man/man1/xtacy.1

.include <bsd.port.mk>
