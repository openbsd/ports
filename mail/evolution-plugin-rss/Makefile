# $OpenBSD: Makefile,v 1.17 2009/11/18 14:42:24 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS-reader plugin for GNOME

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.1.4
PKGNAME=		evolution-plugin-rss-${GNOME_VERSION}p2

CATEGORIES=		mail

# Upstream patch so that RSS feeds are updated again.
MASTER_SITES0=		http://gnome.eu.org/patches/
PATCHFILES=		evolution-rss-${GNOME_VERSION}-recv-feeds.patch:0
PATCH_DIST_STRIP=	-p1

EVO_VERSION=		2.28
SUBST_VARS=		EVO_VERSION

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 enchant expat fontconfig freetype gailutil
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnome-keyring gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png proxy pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 stdc++ tasn1 xcb xml2 z

MASTER_SITES=		http://gnome.eu.org/
EXTRACT_SUFX=		.tar.gz

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:evolution->=2.24.1.1:mail/evolution
LIB_DEPENDS=		gtkhtml-3.14.>=3,gtkhtml-editor::www/gtkhtml3 \
			soup-gnome-2.4.>=1::devel/libsoup,-gnome

USE_X11=		Yes

MODGCONF2_LIBDEP=	Yes
MODGCONF2_SCHEMAS_DIR=	evolution-rss

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gecko \
			--disable-webkit \
			--with-primary-render=gtkhtml
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
