COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.96
REVISION=		8

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xt Xxf86vm archive aspell atk-1.0 atk-bridge-2.0
WANTLIB += b2 boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_system-mt boost_thread-mt brotlicommon brotlidec
WANTLIB += bz2 c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += charset cmark crypto db db_cxx drm ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 ecal-2.0 edata-book-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant-2 epoxy execinfo expat ffi
WANTLIB += fontconfig freetype fribidi gailutil-3 gbm gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0 geocode-glib
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gnome-autoar-0 gnome-autoar-gtk-0
WANTLIB += gnome-desktop-3 goa-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gspell-1 gstallocators-1.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hyphen ical ical-glib icalss icalvcal
WANTLIB += iconv icudata icui18n icuuc idn2 intl javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lber lcms2 ldap ltdl lz4 lzma m
WANTLIB += notify nspr4 nss3 nssutil3 ogg openjp2 orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre phonenumber
WANTLIB += pixman-1 plc4 plds4 png protobuf psl sasl2 secret-1
WANTLIB += smime3 soup-2.4 soup-gnome-2.4 sqlite3 ssl ssl3 tasn1
WANTLIB += unistring vorbis vorbisfile webkit2gtk-4.0 webp webpdemux
WANTLIB += woff2common woff2dec xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB += xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xkbregistry xml2 xshmfence xslt z zstd
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

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		mail/evolution

MODGNOME_TOOLS=		desktop-file-utils

AUTOCONF_VERSION=	2.69

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		ac_cv_path_GPP="${CXX}"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/evolution/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
