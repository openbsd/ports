# $OpenBSD: Makefile,v 1.9 2007/05/17 04:37:30 steven Exp $

COMMENT=	"keymap editor for the X window system"

DISTNAME=	xkeycaps-2.46
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11 sysutils

MASTER_SITES=	http://www.jwz.org/xkeycaps/
EXTRACT_SUFX=	.tar.Z

MAINTAINER= 	Hans Insulander <hin@stacken.kth.se>
HOMEPAGE=http://www.jwz.org/xkeycaps/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xt c 

USE_X11=		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
