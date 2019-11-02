# $OpenBSD: Makefile,v 1.87 2019/11/02 09:36:31 ajacoutot Exp $

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.95
REVISION=		28

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xt Xxf86vm archive aspell atk-1.0 atk-bridge-2.0
WANTLIB += b2 brotlicommon brotlidec bz2 c cairo cairo-gobject
WANTLIB += camel-1.2 canberra canberra-gtk3 charset crypto curl
WANTLIB += db drm ebackend-1.2 ebook-1.2 ebook-contacts-1.2 ecal-2.0
WANTLIB += edata-book-1.2 edataserver-1.2 edataserverui-1.2 enchant
WANTLIB += enchant-2 epoxy expat ffi fontconfig freetype fribidi
WANTLIB += gailutil-3 gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdata
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gnome-autoar-0 gnome-autoar-gtk-0 gnome-desktop-3 goa-1.0
WANTLIB += gobject-2.0 gpg-error graphite2 gspell-1 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hyphen ical ical-glib icalss
WANTLIB += icalvcal iconv icudata icui18n icuuc idn2 intl javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lber ldap ltdl lz4 lzma m nghttp2
WANTLIB += notify nspr4 nss3 nssutil3 oauth ogg openjp2 orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png psl sasl2 secret-1 smime3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl ssl3 tasn1 unistring vorbis
WANTLIB += vorbisfile webkit2gtk-4.0 webp webpdemux woff2common
WANTLIB += woff2dec xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present
WANTLIB += xcb-render xcb-shm xcb-sync xcb-xfixes xml2 xshmfence
WANTLIB += xslt z zstd
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

MASTER_SITES=		http://gnome.eu.org/

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		mail/evolution

MODGNOME_TOOLS=		desktop-file-utils

AUTOCONF_VERSION=	2.69

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		ac_cv_path_GPP="${CXX}"

post-install:
	rm ${PREFIX}/lib/evolution/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
