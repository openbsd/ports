# OpenBSD makefile for:	xzoom
# Version required:	0.3
# Date created:		December 21, 1997
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.8 2001/10/28 13:05:51 espie Exp $
#

COMMENT=	"magnify, rotate, mirror the image on the X11 screen"

DISTNAME=	xzoom-0.3
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	libs/X
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=	imake

.include <bsd.port.mk>
