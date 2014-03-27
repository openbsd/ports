# $OpenBSD: Makefile,v 1.40 2014/03/27 14:20:58 ajacoutot Exp $

BROKEN=			XXX temporary

EVO_VERSION=		3.12
SUBST_VARS +=		EVO_VERSION

SHARED_ONLY=		Yes

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.94
REVISION=		3

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 com_err crypto
WANTLIB += db dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2 ebook-contacts-1.2
WANTLIB += ecal-1.2 edata-book-1.2 edataserver-1.2 enchant expat
WANTLIB += ffi fontconfig freetype gailutil-3 gck-1 gcr-base-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gobject-2.0 gpg-error graphite2
WANTLIB += gssapi gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0 harfbuzz
WANTLIB += harfbuzz-icu heimbase ical icalss icalvcal icudata
WANTLIB += icui18n icuuc javascriptcoregtk-3.0 jpeg krb5 m nspr4
WANTLIB += nss3 nssutil3 orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += roken secret-1 smime3 softokn3 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 ssl3 stdc++ webkitgtk-3.0 webp wind xcb xcb-render
WANTLIB += xcb-shm xkbfile xml2 xslt z

#MASTER_SITES=		http://gnome.eu.org/
MASTER_SITES=		https://distfiles.bsdfrog.org/

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

LIB_DEPENDS=		www/webkit,gtk3

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*/*.so).
BUILD_DEPENDS +=	mail/evolution
RUN_DEPENDS +=		mail/evolution

MODGNOME_DESKTOP_FILE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
