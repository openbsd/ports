# $OpenBSD: Makefile,v 1.20 2009/11/06 19:14:35 ajacoutot Exp $

COMMENT=	elegant music player for MPD

MODPY_EGG_VERSION=1.6.2.1
DISTNAME=	sonata-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio

HOMEPAGE=	http://sonata.berlios.de/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 ffi
WANTLIB += glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs xcb z

MASTER_SITES=		${MASTER_SITE_BERLIOS:=sonata/}

MODULES=	devel/gettext \
		lang/python

BUILD_DEPENDS=	::x11/py-gtk2
RUN_DEPENDS=	::devel/desktop-file-utils \
		::net/py-zsi \
		::audio/py-mpd \
		::audio/py-tagpy \
		::x11/dbus-python \
		::x11/py-gtk2

USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
