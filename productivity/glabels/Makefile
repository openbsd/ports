# $OpenBSD: Makefile,v 1.59 2018/04/28 09:11:48 ajacoutot Exp $

COMMENT =		labels and business card designer

GNOME_PROJECT =		glabels
GNOME_VERSION =		3.4.1

CATEGORIES =		productivity graphics

SHARED_LIBS +=  glabels-3.0               0.0 # 8.0
SHARED_LIBS +=  glbarcode-3.0             0.0 # 0.0

HOMEPAGE =		http://glabels.sourceforge.net

# GPLv3/LGPLv3/MIT      
# Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xxf86vm atk-1.0 atk-bridge-2.0 atspi
WANTLIB += brotlicommon brotlidec c cairo cairo-gobject camel-1.2
WANTLIB += croco-0.6 crypto curl db dbus-1 drm ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 edata-book-1.2 edataserver-1.2 enchant
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gbm gck-1
WANTLIB += gcr-base-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glapi glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstallocators-1.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hyphen iconv icudata icui18n icuuc iec16022
WANTLIB += intl javascriptcoregtk-4.0 jpeg json-glib-1.0 lzma
WANTLIB += m nghttp2 notify nspr4 nss3 nssutil3 oauth orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png qrencode rsvg-2 secret-1 smime3
WANTLIB += soup-2.4 sqlite3 ssl ssl3 tasn1 webkit2gtk-4.0 webp
WANTLIB += webpdemux woff2common woff2dec xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm xcb-xfixes xml2 xslt z zint

MODULES =		devel/dconf \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server \
			graphics/iec16022 \
			graphics/libqrencode \
			graphics/zint \
			x11/gnome/librsvg \
			x11/gtk+3

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
