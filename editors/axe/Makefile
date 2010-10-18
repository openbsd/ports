# $OpenBSD: Makefile,v 1.24 2010/10/18 18:00:16 espie Exp $

COMMENT=		simple to use text editor for X11

DISTNAME=		aXe-6.1.2
PKGNAME=		${DISTNAME:L}p2
CATEGORIES=		editors

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c \
			pthread-stubs xcb

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=editors/}
EXTRACT_SUFX=		.tar.Z

CONFIGURE_STYLE=	imake
USE_X11=		Yes
USE_GROFF =	Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
