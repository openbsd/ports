# $OpenBSD: Makefile,v 1.22 2009/08/10 06:31:08 kili Exp $

COMMENT=		simple to use text editor for X11

DISTNAME=		aXe-6.1.2
PKGNAME=		${DISTNAME:L}p1
CATEGORIES=		editors

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c \
			pthread-stubs xcb

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=editors/}
EXTRACT_SUFX=		.tar.Z

CONFIGURE_STYLE=	imake
USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
