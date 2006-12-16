# $OpenBSD: Makefile,v 1.7 2006/12/16 12:22:36 espie Exp $

COMMENT=	"window manager improved - key driven window manager"

DISTNAME=	wmi-10
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11

HOMEPAGE=	http://wmii.suckless.org/

MAINTAINER=	Julian Frede <julian.frede@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xft Xrender c fontconfig freetype m \
			stdc++

MASTER_SITES=	${HOMEPAGE}/download/

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"
USE_X11=	Yes

.include <bsd.port.mk>
