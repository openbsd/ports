# $OpenBSD: Makefile,v 1.36 2010/03/29 07:53:51 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	jabber client written in pygtk
DISTNAME=	gajim-0.13.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net x11

MASTER_SITES=	${HOMEPAGE}/downloads/0.13/

HOMEPAGE=	http://www.gajim.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3 only
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} 

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/py-sqlite2 \
		::devel/desktop-file-utils \
		::net/py-dns \
		:dbus-python-*:x11/dbus-python \
		::x11/py-gtk2  \
		::security/py-openssl \
		::security/py-crypto \
		:avahi-gtk-*:net/avahi,-gtk,no_mono,no_qt3,no_qt4 \
		::textproc/gtkspell
WANTLIB=	X11 Xcomposite Xdamage Xext Xrender fontconfig freetype \
		m z atk-1.0.>=1011.0 cairo gio-2.0 gdk-x11-2.0.>=600.0 pcre \
		gdk_pixbuf-2.0.>=600.0 glib-2.0.>=600.0 gmodule-2.0.>=600.0 \
		gobject-2.0.>=600.0 gtk-x11-2.0.>=600.0 pango-1.0.>=800.0 \
		pangocairo-1.0 pangoft2-1.0 png glitz Xau Xdmcp expat \
		Xcursor Xfixes Xi Xinerama Xrandr pixman-1 \
		pthread-stubs xcb ffi

.include <bsd.port.mk>
