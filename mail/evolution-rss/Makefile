# $OpenBSD: Makefile,v 1.48 2015/01/22 17:27:20 ajacoutot Exp $

EVO_VERSION=		3.12
SUBST_VARS +=		EVO_VERSION

SHARED_ONLY=		Yes

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.94
REVISION=		8

MASTER_SITES0=		https://git.gnome.org/browse/evolution-rss/patch/?id=
PATCH_DIST_STRIP=	-p1
PATCHFILES=\
	87ae939abd5ef896130bab49d84660309a1826d1:0 \
	a9805199c18b1a8b6b2c48d83b3c78be21b2ab91:0 \
	2e00c47b1491d547914d31b0fc7bec1f170c814c:0 \
	55f2fc268fd4d0ee286bf8340e81c2dd265abd5b:0 \
	6a1bc452b329acfe75b487b214f664848282fe25:0 \
	7600f67649f3f25cc4bae9e132517c9ab63b54b5:0 \
	25fd335f1b5e6d7b6a25e229a840621bf13a1b76:0 \
	b420d3f5b4e9b9b7c288d403290de6bfb9016f0e:0 \
	1266f24b8adb3d33a6364a13da6787ea2237f7e2:0 \
	b420d3f5b4e9b9b7c288d403290de6bfb9016f0e:0 \
	5735a2bf5d74090ca938f6c4fc906b939593804d:0 \
	e95c5042bc8bbf693f88b4da073c81f98fa514dd:0 \
	5677d5f22a4def98175b694de44de9f3010eb163:0 \
	659a3c02d75ee739c36e253582bc497bfa92e692:0 \
	b8c208e82119fec4ff6665593d8f9c01484ad2b9:0 \
	20a93c3d83f6643dc04fc6b39912240511ffdb34:0 \
	a4a3cca441e0dceef4121eb03c91952eccf3cb01:0 \
	e6d784c303fe7cd299e0477141492c4250e3a595:0 \
	1b9c13840f56a94f1b4cca1c5f3a6efbd0170f73:0 \
	ad4df8e92462fafe0d16832b88221c4b3fd765bc:0 \
	c280715f008b1137f3a94c8268b58d5a26af50f1:0 \
	2a8fe9bff05738d21d501ab965c8f6617dae8a21:0 \
	87701535a28eb99363e69eb433d434bd9a2c9ebc:0 \
	87dbe35cba52e9e72d1b29056b59125543a04f43:0 \
	b2253df5a6d12f528d8d2cc03b38c90ba786e65a:0

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += db dbus-1 ebackend-1.2 ebook-1.2 ebook-contacts-1.2
WANTLIB += ecal-1.2 edata-book-1.2 edataserver-1.2 enchant expat
WANTLIB += ffi fontconfig freetype gailutil-3 gbm gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtkhtml-4.0 gtkhtml-editor-4.0 gtkspell3-3 harfbuzz
WANTLIB += harfbuzz-icu ical icalss icalvcal icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg ltdl lzma m nspr4 nss3 nssutil3
WANTLIB += ogg orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += secret-1 smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += ssl3 stdc++ vorbis vorbisfile webkitgtk-3.0 webp xcb
WANTLIB += xcb-render xcb-shm xml2 xslt z

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

MODGNOME_TOOLS=		desktop-file-utils

CONFIGURE_STYLE=	gnu

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gconf2 \
			devel/libtool \
			x11/gnome/common

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${CONFIGURE_ENV} NOCONFIGURE=1 \
		./autogen.sh ${CONFIGURE_ARGS}

post-install:
	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
