# $OpenBSD: Makefile,v 1.59 2016/10/31 12:34:30 ajacoutot Exp $

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.95
REVISION=		6

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm archive
WANTLIB += atk-1.0 atk-bridge-2.0 atspi bz2 c cairo cairo-gobject
WANTLIB += camel-1.2 canberra canberra-gtk3 crypto cryptui db
WANTLIB += dbus-1 dbus-glib-1 drm ebackend-1.2 ebook-1.2 ebook-contacts-1.2
WANTLIB += ecal-1.2 edata-book-1.2 edataserver-1.2 edataserverui-1.2
WANTLIB += enchant epoxy estdc++ expat ffi fontconfig freetype
WANTLIB += gailutil-3 gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 gmp
WANTLIB += gnome-autoar-0 gnome-autoar-gtk-0 gnome-desktop-3 gnutls
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtkhtml-4.0
WANTLIB += gtkhtml-editor-4.0 gtkspell3-3 harfbuzz harfbuzz-icu
WANTLIB += hogweed hyphen ical icalss icalvcal iconv icudata icui18n
WANTLIB += icuuc idn intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += ltdl lz4 lzma lzo2 m nettle notify nspr4 nss3 nssutil3
WANTLIB += ogg orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += secret-1 smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += ssl3 stdc++ tasn1 vorbis vorbisfile webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z
WANTLIB += lib/evolution/eabutil
WANTLIB += lib/evolution/econtacteditor
WANTLIB += lib/evolution/econtactlisteditor
WANTLIB += lib/evolution/email-engine
WANTLIB += lib/evolution/essmime
WANTLIB += lib/evolution/evolution-mail-composer
WANTLIB += lib/evolution/evolution-mail-formatter
WANTLIB += lib/evolution/evolution-mail
WANTLIB += lib/evolution/evolution-shell
WANTLIB += lib/evolution/evolution-smime
WANTLIB += lib/evolution/evolution-util
WANTLIB += lib/evolution/gnomecanvas

MASTER_SITES=		http://gnome.eu.org/

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		mail/evolution \
			www/gtkhtml4

MODGNOME_TOOLS=		desktop-file-utils

AUTOCONF_VERSION=	2.69

CONFIGURE_STYLE=	autoconf

post-install:
	rm ${PREFIX}/lib/evolution/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
