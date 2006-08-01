# $OpenBSD: Makefile,v 1.4 2006/08/01 18:38:23 alek Exp $

COMMENT=	"window manager improved - key driven window manager"

DISTNAME=	wmi-10
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11	

HOMEPAGE=	http://wmi.modprobe.de/	

MAINTAINER=	Julian Frede <julian.frede@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xft Xrender c fontconfig freetype m \
			stdc++

MASTER_SITES=	${MASTER_SITE_BERLIOS=wmi/}

# not necessary, but to ensure consistent behaviour
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

.include <bsd.port.mk>
