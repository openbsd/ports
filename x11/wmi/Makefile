# $OpenBSD: Makefile,v 1.2 2004/12/19 17:27:03 alek Exp $

COMMENT=	"window manager improved - key driven window manager"

DISTNAME=	wmi-10	
CATEGORIES=	x11	

HOMEPAGE=	http://wmi.modprobe.de/	

MAINTAINER=	Julian Frede <julian.frede@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xft Xrender c fontconfig freetype m stdc++

MASTER_SITES=	http://download.berlios.de/wmi/

# not necessary, but to ensure consistent behaviour
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

.include <bsd.port.mk>
