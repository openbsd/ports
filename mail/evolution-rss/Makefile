# $OpenBSD: Makefile,v 1.51 2015/04/13 07:56:57 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.95
REVISION=		0

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += cryptui db dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 ecal-1.2 edata-book-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant epoxy expat ffi fontconfig
WANTLIB += freetype gailutil-3 gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtkhtml-4.0
WANTLIB += gtkhtml-editor-4.0 gtkspell3-3 harfbuzz harfbuzz-icu
WANTLIB += ical icalss icalvcal icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg ltdl lzma m nspr4 nss3 nssutil3 ogg orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs secret-1 smime3
WANTLIB += softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3 stdc++
WANTLIB += vorbis vorbisfile webkitgtk-3.0 webp xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MASTER_SITES=		http://gnome.eu.org/

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

LIB_DEPENDS=		www/gtkhtml4 \
			www/webkit,gtk3

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*.so).
BUILD_DEPENDS +=	mail/evolution
RUN_DEPENDS +=		mail/evolution

MODGNOME_TOOLS=		desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-primary-render=webkit

post-install:
	rm ${PREFIX}/lib/evolution/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
