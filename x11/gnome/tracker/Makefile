# $OpenBSD: Makefile,v 1.186 2015/04/13 07:45:20 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		powerful desktop search tool and indexer

GNOME_PROJECT=		tracker
GNOME_VERSION=		1.4.0

# there is already audio/tracker, so this port has to live
# as meta-tracker
PKGNAME=		meta-tracker-${VERSION}
REVISION=		0

# NOTE: when TRACKER_API changes, increment accordingly and bump:
# x11/gnome/documents
# x11/gnome/grilo-plugins
# x11/gnome/nautilus
# x11/gnome/online-miners
# x11/gnome/photos
# x11/gnome/rygel
TRACKER_API=		1.0
SUBST_VARS=		TRACKER_API

SHARED_LIBS +=  tracker-common       3.1      # unknown
SHARED_LIBS +=  tracker-data         3.1      # unknown
SHARED_LIBS +=  tracker-sparql-1.0   0.0      # 400.0
SHARED_LIBS +=  tracker-extract      0.0      # unknown
SHARED_LIBS +=  tracker-miner-1.0    0.0      # 400.0
SHARED_LIBS +=  tracker-control-1.0  0.0      # 400.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject cue dbus-1 enca epoxy
WANTLIB += exempi exif expat ffi fontconfig freetype gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gsf-1 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gxps harfbuzz icudata
WANTLIB += icui18n icuuc iptcdata jpeg kvm lcms2 lzma m mediaart-2.0
WANTLIB += openjpeg orc-0.4 osinfo-1.0 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png poppler poppler-glib
WANTLIB += pthread pthread-stubs soup-2.4 sqlite3 stdc++ tag tag_c
WANTLIB += tiff totem-plparser upower-glib util uuid xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=		audio/libcue \
			audio/taglib \
			converters/enca \
			devel/libgsf \
			graphics/giflib \
			graphics/libexif \
			graphics/libgxps \
			graphics/libiptcdata \
			misc/libosinfo \
			multimedia/gstreamer1/plugins-base \
			print/poppler \
			sysutils/e2fsprogs \
			sysutils/upower \
			textproc/exempi \
			textproc/icu4c \
			x11/gnome/libmediaart>=1.9.0 \
			x11/gnome/totem-pl-parser

# picked up by configure to build the resdump tool. it is not installed,
# but when dpb removes libgee during a running build, causes tracker build
# to fail.
BUILD_DEPENDS +=	devel/libgee

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*.so).
#BUILD_DEPENDS +=	mail/evolution
#RUN_DEPENDS +=		mail/evolution

TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			x11/dbus-python

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection vala
MODGNOME_TOOLS +=	gtk-update-icon-cache

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

MODPY_ADJ_FILES=	tests/tracker-writeback/01-writeback.py \
			utils/data-generators/cc/generate

CONFIGURE_ARGS=		--disable-miner-thunderbird \
			--disable-miner-firefox \
			--disable-network-manager

# needs libgrss
CONFIGURE_ARGS +=	--disable-miner-rss

# cyclic dependency with x11/gnome/nautilus
CONFIGURE_ARGS +=	--disable-nautilus-extension

# XXX re-enable evolution plugins when fixed upstream
# temporarily disable evolution miner which does not build with evo >= 3.6.0
# when fixed:
#  uncomment BUILD_DEPENDS on evolution
#  uncomment the rm call in post-install
CONFIGURE_ARGS +=	--disable-miner-evolution

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/meta-tracker/

pre-configure:
	perl -pi -e 's,/usr/bin,${LOCALBASE}/bin,' \
		${WRKSRC}/src/tracker-needle/tracker-utils.vala

post-install:
	rm ${PREFIX}/lib/tracker-${TRACKER_API}/extract-modules/*.{a,la}
	rm ${PREFIX}/lib/tracker-${TRACKER_API}/writeback-modules/*.{a,la}
#	rm ${PREFIX}/lib/evolution/plugins/*.{a,la}

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=746939
	find ${PREFIX}/bin -type f ! -perm 0755 -exec chmod 0755 '{}' +

do-test:
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM}

.include <bsd.port.mk>
