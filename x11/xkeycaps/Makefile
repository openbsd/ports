# $OpenBSD: Makefile,v 1.16 2013/10/11 20:40:09 naddy Exp $

COMMENT=	keymap editor for the X window system

DISTNAME=	xkeycaps-2.46
REVISION=	2
CATEGORIES=	x11 sysutils

MASTER_SITES=	http://www.jwz.org/xkeycaps/
EXTRACT_SUFX=	.tar.Z

MAINTAINER= 	Hans Insulander <hin@stacken.kth.se>
HOMEPAGE=http://www.jwz.org/xkeycaps/

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c 

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
