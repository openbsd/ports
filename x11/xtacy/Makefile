# OpenBSD makefile for:	xtacy
# Version required:     1.13
# Date created:         December 21, 1997
# Whom:                 Don Schmidt
#
# $OpenBSD: Makefile,v 1.8 2000/04/05 01:21:32 espie Exp $
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
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAN1=	xtacy.1

USE_X11=	Yes
WRKDIST=	${WRKDIR}/Xtacy
ALL_TARGET=	xtacy
FAKE=		Yes

pre-install:
	cp ${WRKSRC}/Xtacy.1 ${WRKSRC}/xtacy.1

.include <bsd.port.mk>
