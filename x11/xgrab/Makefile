# OpenBSD makefile for:    xgrab
# Version required:     2.41
# Date created:         25 January 1998
# Whom:                 Angelos
#
# $OpenBSD: Makefile,v 1.7 2000/03/24 22:12:06 espie Exp $
#

BROKEN=		port wants to open display during build.

DISTNAME=	xgrabsc.2_41
PKGNAME=	xgrab-2.41
CATEGORIES=	x11
NEED_VERSION=	1.195
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_IMAKE=	yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults 
# Needs to actually *run* xrdb
#IS_INTERACTIVE=	yes
# "make depend" blows up
XMKMF=		xmkmf

.include <bsd.port.mk>
