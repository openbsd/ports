# OpenBSD makefile for:	xzoom
# Version required:	0.3
# Date created:		December 21, 1997
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.7 2001/07/09 17:12:02 pvalchev Exp $
#

COMMENT=	"magnify, rotate, mirror the image on the X11 screen"

DISTNAME=	xzoom-0.3
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	libs/X
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=	imake

.include <bsd.port.mk>
