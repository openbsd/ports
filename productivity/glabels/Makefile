# $OpenBSD: Makefile,v 1.70 2020/03/14 12:55:01 ajacoutot Exp $

COMMENT =		labels and business card designer

GNOME_PROJECT =		glabels
GNOME_VERSION =		3.4.1
REVISION =		9

CATEGORIES =		productivity graphics

SHARED_LIBS +=  glabels-3.0               0.0 # 8.0
SHARED_LIBS +=  glbarcode-3.0             0.0 # 0.0

HOMEPAGE =		http://glabels.sourceforge.net

# GPLv3/LGPLv3/MIT      
# Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += brotlicommon brotlidec c cairo cairo-gobject camel-1.2
WANTLIB += db ebackend-1.2 ebook-1.2 ebook-contacts-1.2 edata-book-1.2
WANTLIB += edataserver-1.2 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gck-1 gcr-base-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv icudata
WANTLIB += icui18n icuuc idn2 iec16022 intl json-glib-1.0 lzma
WANTLIB += m nspr4 nss3 nssutil3 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png psl qrencode
WANTLIB += rsvg-2 secret-1 smime3 soup-2.4 sqlite3 ssl3 unistring
WANTLIB += xcb xcb-render xcb-shm xml2 z zint

COMPILER =		base-clang ports-gcc base-gcc

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
