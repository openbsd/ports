# OpenBSD makefile for:	xtacy
# Version required:     1.13
# Date created:         December 21, 1997
# Whom:                 Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/01/24 22:02:17 don Exp $
#

DISTNAME=	Xtacy113
PKGNAME=	xtacy-1.13
CATEGORIES=	x11
MASTER_SITES=	ftp://sidehack.gweep.net/pub/gweep_progs/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	X11/toys

MAINTAINER=	don@OpenBSD.ORG

MAN1=	xtacy.1

USE_X11=	yes
WRKSRC=		${WRKDIR}/Xtacy
ALL_TARGET=	xtacy

pre-install:
	${CP} ${WRKSRC}/Xtacy.1 ${WRKSRC}/xtacy.1

.include <bsd.port.mk>
