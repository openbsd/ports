# $OpenBSD: Makefile,v 1.161 2014/03/16 15:58:48 ajacoutot Exp $

EVO_VERSION=		3.8
SUBST_VARS +=		EVO_VERSION

SHARED_ONLY=		Yes

COMMENT=		powerful desktop search tool and indexer

GNOME_PROJECT=		tracker
GNOME_VERSION=		0.16.4
REVISION=		1

# there is already audio/tracker, so this port has to live
# as meta-tracker.
PKGNAME=		meta-tracker-${VERSION}

# NOTE: when TRACKER_VERSION changes, increment accordingly and bump:
# x11/gnome/documents
# x11/gnome/grilo-plugins
# x11/gnome/online-miners
# x11/gnome/photos
# x11/gnome/rygel
TRACKER_VERSION=	${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		TRACKER_VERSION

SHARED_LIBS +=  tracker-common       3.0      # 1600.0
SHARED_LIBS +=  tracker-data         3.0      # 1600.0
SHARED_LIBS +=  tracker-sparql-0.16  0.0      # 1600.0
SHARED_LIBS +=  tracker-extract-0.16 0.0      # 1600.0
SHARED_LIBS +=  tracker-miner-0.16   0.0      # 1600.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject cue dbus-1 dbus-glib-1
WANTLIB += enca exempi exif expat ffi fontconfig freetype gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gsf-1 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz icudata icui18n
WANTLIB += icuuc jpeg kvm lcms2 lzma m nautilus-extension openjpeg
WANTLIB += orc-0.4 osinfo-1.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png poppler poppler-glib pthread pthread-stubs
WANTLIB += secret-1 soup-2.4 sqlite3 stdc++ tag tag_c tiff totem-plparser
WANTLIB += upower-glib uuid xcb xcb-render xcb-shm xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf \
			lang/python

LIB_DEPENDS=		audio/libcue \
			audio/taglib \
			converters/enca \
			devel/libgsf \
			graphics/giflib \
			graphics/libexif \
			misc/libosinfo \
			multimedia/gstreamer1/plugins-base \
			print/poppler \
			sysutils/e2fsprogs>=1.42.7 \
			sysutils/upower \
			textproc/exempi \
			textproc/icu4c \
			x11/gnome/nautilus \
			x11/gnome/totem-pl-parser

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*/*.so).
#BUILD_DEPENDS +=	mail/evolution,-main
#RUN_DEPENDS +=		mail/evolution,-main

TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			x11/dbus-python

LIBTOOL_FLAGS=		--tag=disable-static

MODGNOME_TOOLS= 	gi vala
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

MODPY_ADJ_FILES=	tests/tracker-writeback/01-writeback.py \
			utils/data-generators/cc/generate

CONFIGURE_ARGS=		--disable-static \
			--disable-miner-thunderbird \
			--disable-miner-firefox \
			--disable-network-manager \
			--disable-qt

# needs libgxps
CONFIGURE_ARGS +=	--disable-libgxps

# needs libgrss
CONFIGURE_ARGS +=	--disable-miner-rss

# needs libiptcdata
CONFIGURE_ARGS +=	--disable-libiptcdata

# XXX re-enable evolution plugins when fixed upstream
# temporarily disable evolution miner which does not build with evo >= 3.6.0
# when fixed:
#  uncomment BUILD_DEPENDS on evolution
#  uncomment the rm call in post-install
CONFIGURE_ARGS +=	--disable-miner-evolution

# XXX make it build until we figure out the full extent of the brain-damage
CONFIGURE_ARGS +=	--disable-unit-tests

MODGNOME_LDFLAGS=	-Wl,-rpath,${TRUEPREFIX}/lib/tracker-${TRACKER_VERSION}

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/meta-tracker/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/tracker-needle/tracker-utils.vala
	perl -pi -e 's,/usr/bin,${LOCALBASE}/bin,' \
		${WRKSRC}/src/tracker-needle/tracker-utils.vala

post-install:
	rm ${PREFIX}/lib/tracker-${TRACKER_VERSION}/extract-modules/*.la
	rm ${PREFIX}/lib/tracker-${TRACKER_VERSION}/writeback-modules/*.la
#	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/plugins/*.la
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.la

do-test:
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM}

.include <bsd.port.mk>
