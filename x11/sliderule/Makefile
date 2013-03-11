# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:15 espie Exp $

COMMENT=	slide rule component of X11R3's xcalc

DISTNAME=	sliderule
PKGNAME=	sliderule-1.0
REVISION=	0
CATEGORIES=	x11

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

MASTER_SITES =	ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

WANTLIB=	X11 Xau Xdmcp Xext c m

USE_GROFF =	Yes

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
