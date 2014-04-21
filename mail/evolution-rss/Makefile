# $OpenBSD: Makefile,v 1.45 2014/04/21 14:52:08 ajacoutot Exp $

EVO_VERSION=		3.12
SUBST_VARS +=		EVO_VERSION

SHARED_ONLY=		Yes

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.94
REVISION=		5

MASTER_SITES0=		https://distfiles.bsdfrog.org/evolution-rss/
PATCH_DIST_STRIP=	-p1
PATCHFILES=\
	87ae939abd5ef896130bab49d84660309a1826d1.patch:0 \
	a9805199c18b1a8b6b2c48d83b3c78be21b2ab91.patch:0 \
	2e00c47b1491d547914d31b0fc7bec1f170c814c.patch:0 \
	55f2fc268fd4d0ee286bf8340e81c2dd265abd5b.patch:0 \
	6a1bc452b329acfe75b487b214f664848282fe25.patch:0 \
	7600f67649f3f25cc4bae9e132517c9ab63b54b5.patch:0 \
	25fd335f1b5e6d7b6a25e229a840621bf13a1b76.patch:0 \
	b420d3f5b4e9b9b7c288d403290de6bfb9016f0e.patch:0

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 db dbus-1 dbus-glib-1
WANTLIB += ebackend-1.2 ebook-1.2 ebook-contacts-1.2 ecal-1.2
WANTLIB += edata-book-1.2 edataserver-1.2 enchant expat ffi fontconfig
WANTLIB += freetype gailutil-3 gck-1 gcr-3 gcr-base-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtkhtml-4.0 gtkhtml-editor-4.0 gtkspell3-3 harfbuzz
WANTLIB += harfbuzz-icu ical icalss icalvcal icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg m nspr4 nss3 nssutil3 orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs secret-1
WANTLIB += smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3
WANTLIB += stdc++ webkitgtk-3.0 webp xcb xcb-render xcb-shm xml2
WANTLIB += xslt z

#MASTER_SITES=		http://gnome.eu.org/
MASTER_SITES=		http://pkgs.fedoraproject.org/repo/pkgs/evolution-rss/evolution-rss-${GNOME_VERSION}${EXTRACT_SUFX}/77f38f8c98f64f181f74443f331c7336/

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

LIB_DEPENDS=		www/webkit,gtk3

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*/*.so).
BUILD_DEPENDS +=	mail/evolution
RUN_DEPENDS +=		mail/evolution

MODGNOME_TOOLS +=	desktop-file-utils

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

post-install:
	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
