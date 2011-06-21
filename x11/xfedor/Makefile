# $OpenBSD: Makefile,v 1.26 2011/06/21 20:21:21 naddy Exp $
# ATTENTION: It does not work in > 256 color modes, please fix
# it if you can.

COMMENT=	.bdf, .xbm, .xpm mouse cursor editor

DISTNAME=       xfedor-5.0.1
REVISION=	0
CATEGORIES=	x11

MASTER_SITES= 	${MASTER_SITE_SUNSITE:=X11/fonts/}

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xpm c m

NO_REGRESS=	Yes

.include <bsd.port.mk>
