# $OpenBSD: Makefile,v 1.32 2019/07/14 00:39:35 naddy Exp $

COMMENT=		simple to use text editor for X11

DISTNAME=		aXe-6.1.2
PKGNAME=		${DISTNAME:L}
REVISION=		4
CATEGORIES=		editors

# "other than commercial exploitation"
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=editors/}
EXTRACT_SUFX=		.tar.Z

CONFIGURE_STYLE=	imake
NO_TEST=		Yes

.include <bsd.port.mk>
