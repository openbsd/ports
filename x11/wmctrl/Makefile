# $OpenBSD: Makefile,v 1.5 2007/05/17 04:50:58 steven Exp $

# 64-bit/endian issue?
NOT_FOR_ARCHS=	sparc64

COMMENT=	"interact with an EWMH/NetWM window manager"
DISTNAME=	wmctrl-1.05
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}dist/

HOMEPAGE=	http://sweb.cz/tripie/utils/wmctrl/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		ICE SM X11 Xmu c iconv intl

USE_X11=	Yes

LIB_DEPENDS=	glib-2.0.>=0.11::devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
