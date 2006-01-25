# $OpenBSD: Makefile,v 1.36 2006/01/25 03:57:43 david Exp $

COMMENT=		"window manager based on the original Blackbox code"

VERSION=		0.9.14
DISTNAME=		fluxbox-${VERSION}
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}

HOMEPAGE=		http://fluxbox.org/

MAINTAINER=		David Krause <david@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xft Xinerama Xpm Xrandr Xrender \
			fontconfig Imlib2 ltdl freetype stdc++ m c

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS=		--enable-xinerama --enable-imlib2

USE_X11=		Yes

NO_REGRESS=		Yes

SEPARATE_BUILD=		simple

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		Imlib2.2::graphics/imlib2

CONFIGURE_ENV=		PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

.include <bsd.port.mk>
