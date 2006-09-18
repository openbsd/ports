# $OpenBSD: Makefile,v 1.3 2006/09/18 10:21:49 espie Exp $

# 64-bit/endian issue?
NOT_FOR_ARCHS=	sparc64

COMMENT=	"command line tool to interact with an EWMH/NetWM windowmanager"
DISTNAME=	wmctrl-1.05
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

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glib-2.0.>=0.11::devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
