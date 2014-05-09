# $OpenBSD: Makefile,v 1.171 2014/05/09 09:16:10 ajacoutot Exp $

EVO_VERSION=		3.12
SUBST_VARS +=		EVO_VERSION

SHARED_ONLY=		Yes

COMMENT=		powerful desktop search tool and indexer

GNOME_PROJECT=		tracker
GNOME_VERSION=		1.0.1

# there is already audio/tracker, so this port has to live
# as meta-tracker.
PKGNAME=		meta-tracker-${VERSION}

# NOTE: when TRACKER_VERSION changes, increment accordingly and bump:
# x11/gnome/documents
# x11/gnome/grilo-plugins
# x11/gnome/nautilus
# x11/gnome/online-miners
# x11/gnome/photos
# x11/gnome/rygel
TRACKER_VERSION=	${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		TRACKER_VERSION

SHARED_LIBS +=  tracker-common       3.0      # unknown
SHARED_LIBS +=  tracker-control-1.0  0.0      # 0.0
SHARED_LIBS +=  tracker-data         3.0      # unknown
SHARED_LIBS +=  tracker-sparql-1.0   0.0      # 0.0
SHARED_LIBS +=  tracker-extract      0.0      # unknown
SHARED_LIBS +=  tracker-miner-1.0    0.0      # 0.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject cue dbus-1 enca exempi
WANTLIB += exif expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gif gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gsf-1 gstaudio-1.0 gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icui18n icuuc jpeg
WANTLIB += kvm lcms2 lzma m mediaart-1.0 openjpeg orc-0.4 osinfo-1.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png poppler poppler-glib pthread pthread-stubs soup-2.4
WANTLIB += sqlite3 stdc++ tag tag_c tiff totem-plparser upower-glib
WANTLIB += uuid xcb xcb-render xcb-shm xml2 xslt z

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
			x11/gnome/libmediaart \
			x11/gnome/totem-pl-parser

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*/*.so).
#BUILD_DEPENDS +=	mail/evolution
#RUN_DEPENDS +=		mail/evolution

TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			x11/dbus-python

MODGNOME_TOOLS += 	desktop-file-utils gobject-introspection vala
MODGNOME_TOOLS +=	gtk-update-icon-cache

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

MODPY_ADJ_FILES=	tests/tracker-writeback/01-writeback.py \
			utils/data-generators/cc/generate

CONFIGURE_ARGS=		--disable-miner-thunderbird \
			--disable-miner-firefox \
			--disable-network-manager

# needs libgxps
CONFIGURE_ARGS +=	--disable-libgxps

# needs libgrss
CONFIGURE_ARGS +=	--disable-miner-rss

# needs libiptcdata
CONFIGURE_ARGS +=	--disable-libiptcdata

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
	${SUBST_CMD} ${WRKSRC}/src/tracker-needle/tracker-utils.vala
	perl -pi -e 's,/usr/bin,${LOCALBASE}/bin,' \
		${WRKSRC}/src/tracker-needle/tracker-utils.vala

post-install:
	rm ${PREFIX}/lib/tracker-${TRACKER_VERSION}/extract-modules/*.{a,la}
	rm ${PREFIX}/lib/tracker-${TRACKER_VERSION}/writeback-modules/*.{a,la}
#	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/plugins/*.{a,la}

do-test:
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM}

.include <bsd.port.mk>
