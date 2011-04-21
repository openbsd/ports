# $OpenBSD: Makefile,v 1.41 2011/04/21 07:06:43 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		simple GTK desktop news aggregator

DISTNAME=		liferea-1.6.5
CATEGORIES=		www x11

REVISION=		1

HOMEPAGE=		http://liferea.sourceforge.net/

MAINTAINER=		Wiktor Izdebski <vicviq@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm enchant expat
WANTLIB += fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstapp-0.10 gstbase-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 gtk-x11-2.0 icudata icui18n
WANTLIB += icuuc jpeg lua m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += stdc++ webkit-1.0 xcb xcb-render xcb-shm xml2 xslt
WANTLIB += z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=liferea/}

MODULES=		devel/gettext \
			textproc/intltool \
			devel/gconf2
LIB_DEPENDS=		lang/lua \
			devel/libnotify>=0.7.2 \
			textproc/libxslt \
			devel/libglade2 \
			devel/libsoup,-main \
			textproc/enchant \
			www/webkit

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/hicolor-icon-theme

FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html"

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
MODGCONF2_SCHEMAS_DIR=	liferea

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--docdir=${PREFIX}/share/doc/liferea \
			--enable-dbus \
			--enable-libnotify \
			--enable-lua
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
