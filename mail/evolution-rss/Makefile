# $OpenBSD: Makefile,v 1.74 2017/11/12 12:25:46 ajacoutot Exp $

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.95
REVISION=		16

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xtst Xxf86vm archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject camel-1.2 canberra
WANTLIB += canberra-gtk3 crypto cryptui db dbus-1 dbus-glib-1
WANTLIB += drm ebackend-1.2 ebook-1.2 ebook-contacts-1.2 ecal-1.2
WANTLIB += edata-book-1.2 edataserver-1.2 edataserverui-1.2 enchant
WANTLIB += epoxy expat ffi fontconfig freetype gailutil-3 gbm
WANTLIB += gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gnome-autoar-0 gnome-autoar-gtk-0
WANTLIB += gnome-desktop-3 gobject-2.0 gpg-error graphite2 gstallocators-1.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbadallocators-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gtkspell3-3 harfbuzz
WANTLIB += harfbuzz-icu hyphen ical icalss icalvcal iconv icudata
WANTLIB += icui18n icuuc intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += ltdl lz4 lzma m notify nspr4 nss3 nssutil3 ogg orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png secret-1 smime3 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 ssl3 tasn1 vorbis vorbisfile webkit2gtk-4.0
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

LIB_DEPENDS=		mail/evolution

MODGNOME_TOOLS=		desktop-file-utils

AUTOCONF_VERSION=	2.69

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV = ac_cv_path_GPP="${CXX}"

post-install:
	rm ${PREFIX}/lib/evolution/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
