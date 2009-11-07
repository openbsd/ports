# $OpenBSD: Makefile,v 1.15 2009/11/07 08:08:40 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS-reader plugin for GNOME

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.1.4
PKGNAME=		evolution-plugin-rss-${GNOME_VERSION}p0

CATEGORIES=		mail

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
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 gtkhtml-3.14 gtkhtml-editor
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png proxy pthread pthread-stubs soup-2.4 sqlite3 stdc++
WANTLIB += tasn1 xcb xml2 z

MASTER_SITES=		http://gnome.eu.org/
EXTRACT_SUFX=		.tar.gz

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:evolution->=2.24.1.1:mail/evolution
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			soup-gnome-2.4.>=1::devel/libsoup,-gnome

USE_X11=		Yes

MODGCONF2_LIBDEP=	No
MODGCONF2_SCHEMAS_DIR=	evolution-rss

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gecko \
			--disable-webkit \
			--with-primary-render=gtkhtml
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
