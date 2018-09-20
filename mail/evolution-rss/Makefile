# $OpenBSD: Makefile,v 1.81 2018/09/20 09:22:03 ajacoutot Exp $

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.95
REVISION=		23

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xxf86vm archive aspell atk-1.0 atk-bridge-2.0
WANTLIB += atspi brotlicommon brotlidec bz2 c cairo cairo-gobject
WANTLIB += camel-1.2 canberra canberra-gtk3 crypto curl db dbus-1
WANTLIB += drm ebackend-1.2 ebook-1.2 ebook-contacts-1.2 ecal-1.2
WANTLIB += edata-book-1.2 edataserver-1.2 edataserverui-1.2 enchant
WANTLIB += enchant-2 epoxy expat ffi fontconfig freetype fribidi
WANTLIB += gailutil-3 gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdata
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gnome-autoar-0 gnome-autoar-gtk-0 gnome-desktop-3 goa-1.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtkspell3-3 harfbuzz harfbuzz-icu hyphen ical icalss
WANTLIB += icalvcal iconv icudata icui18n icuuc intl javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lber-2.4 ldap-2.4 ltdl lz4 lzma
WANTLIB += m nghttp2 notify nspr4 nss3 nssutil3 oauth ogg orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png sasl2 secret-1 smime3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl ssl3 tasn1 vorbis vorbisfile
WANTLIB += webkit2gtk-4.0 webp webpdemux woff2common woff2dec
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z
WANTLIB += xcb-dri3 xcb-present xcb-sync xshmfence zstd
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
