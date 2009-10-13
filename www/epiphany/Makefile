# $OpenBSD: Makefile,v 1.42 2009/10/13 09:57:41 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME web browser based on mozilla

# PLIST regen is needed for at least the following ports when
# the epiphany extensions directory changes:
# (i.e. ${LOCALBASE}/lib/epiphany/2.28/extensions)
# www/epiphany-extensions
# x11/gnome/seahorse-plugins

GNOME_PROJECT=	epiphany
GNOME_VERSION=	2.28.0

M=		${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=	M
CATEGORIES=	www

HOMEPAGE=	http://projects.gnome.org/epiphany/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c
WANTLIB += cairo dbus-1 dbus-glib-1 enchant expat fontconfig freetype
WANTLIB += gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnome-keyring gnutls gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 icudata icui18n icuuc jpeg
WANTLIB += m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png proxy pthread pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl3 startup-notification-1
WANTLIB += stdc++ tasn1 xcb xcb-atom xcb-aux xcb-event xml2 z

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:gnome-icon-theme-*:x11/gnome/icon-theme \
		:gnome-themes-*:x11/gnome/themes \
		:iso-codes-*:devel/iso-codes \
		::x11/gnome/py-gnome
LIB_DEPENDS=	xslt.>=1::textproc/libxslt \
		execinfo::devel/libexecinfo \
		notify.>=2::devel/libnotify \
		webkit-1.0::www/webkit \
		soup-gnome-2.4.>=1::devel/libsoup,-gnome

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

USE_X11=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES= 	Yes
MODGCONF2_SCHEMAS_DIR=  epiphany

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-scrollkeeper \
		--disable-gtk-doc \
		--disable-zeroconf

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		HOME=/tmp

.include <bsd.port.mk>
