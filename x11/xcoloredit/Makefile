# OpenBSD makefile for:	xcoloredit
# Version required:	1.3
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.11 2001/07/09 17:11:36 pvalchev Exp $
#

COMMENT=	"find color values by graphical color mixing"

DISTNAME=	xcoloredit
PKGNAME=	xcoloredit-1.2
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.eos.hokudai.ac.jp/pub/X11/R5contrib/ \
		ftp://ftp.x.org/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=	imake

.include <bsd.port.mk>
