# OpenBSD makefile for:	xtacy
# Version required:     1.13
# Date created:         December 21, 1997
# Whom:                 Don Schmidt
#
# $OpenBSD: Makefile,v 1.7 2000/03/24 22:12:06 espie Exp $
#

DISTNAME=	Xtacy113
PKGNAME=	xtacy-1.13
CATEGORIES=	x11
NEED_VERSION=	1.191
MASTER_SITES=	ftp://sidehack.gweep.net/pub/gweep_progs/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	X11/toys

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MAN1=	xtacy.1

USE_X11=	yes
WRKDIST=	${WRKDIR}/Xtacy
ALL_TARGET=	xtacy

pre-install:
	cp ${WRKSRC}/Xtacy.1 ${WRKSRC}/xtacy.1

.include <bsd.port.mk>
