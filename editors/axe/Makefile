# $OpenBSD: Makefile,v 1.30 2015/01/22 17:47:51 naddy Exp $

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
NO_TEST=		Yes

.include <bsd.port.mk>
