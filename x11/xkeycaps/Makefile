# $OpenBSD: Makefile,v 1.18 2019/05/05 15:10:00 danj Exp $

COMMENT=	keymap editor for the X window system

DISTNAME=	xkeycaps-2.46
REVISION=	3
CATEGORIES=	x11 sysutils

MASTER_SITES=	http://www.jwz.org/xkeycaps/
EXTRACT_SUFX=	.tar.Z

HOMEPAGE=http://www.jwz.org/xkeycaps/

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c 

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
