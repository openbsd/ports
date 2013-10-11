# $OpenBSD: Makefile,v 1.29 2013/10/11 20:39:22 naddy Exp $

COMMENT=		simple to use text editor for X11

DISTNAME=		aXe-6.1.2
PKGNAME=		${DISTNAME:L}
REVISION=		3
CATEGORIES=		editors

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c \
			pthread-stubs xcb

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=editors/}
EXTRACT_SUFX=		.tar.Z

CONFIGURE_STYLE=	imake
USE_GROFF =		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
