# OpenBSD makefile for:    xgrab
# Version required:     2.41
# Date created:         25 January 1998
# Whom:                 Angelos
#
# $OpenBSD: Makefile,v 1.15 2001/10/28 13:05:51 espie Exp $
#

COMMENT=	"X11 image grabber"

DISTNAME=	xgrabsc.2_41
PKGNAME=	xgrab-2.41
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications
EXTRACT_SUFX=	.tar.Z

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=	imake

.include <bsd.port.mk>
