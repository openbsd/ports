# $OpenBSD: Makefile,v 1.151 2013/09/26 12:48:02 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		powerful desktop search tool and indexer

GNOME_PROJECT=		tracker
GNOME_VERSION=		0.16.2
REVISION=		1

# there is already audio/tracker, so this port has to live
# as meta-tracker.
PKGNAME=		meta-tracker-${VERSION}

# Only get the first x.y which is needed in the PLIST.
# NOTE: when MAJ_V changes, increment TRACKER_VERSION accordingly and bump:
# x11/gnome/documents
# x11/gnome/grilo-plugins
# x11/gnome/photos
# x11/gnome/rygel
MAJ_V=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}

EVO_VERSION=		3.4
SUBST_VARS=		MAJ_V EVO_VERSION

SHARED_LIBS +=  tracker-common       3.0      # 1600.0
SHARED_LIBS +=  tracker-data         3.0      # 1600.0
SHARED_LIBS +=  tracker-sparql-0.16  0.0      # 1600.0
SHARED_LIBS +=  tracker-extract-0.16 0.0      # 1600.0
SHARED_LIBS +=  tracker-miner-0.16   0.0      # 1600.0

HOMEPAGE=		http://projects.gnome.org/tracker/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto cue curl dbus-1
WANTLIB += dbus-glib-1 enca exempi exif expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gsf-1 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz icudata icui18n
WANTLIB += icuuc idn jpeg kvm lcms2 lua5.1 lzma m nautilus-extension
WANTLIB += openjpeg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png poppler poppler-glib pthread pthread-stubs
WANTLIB += quvi secret-1 soup-2.4 soup-gnome-2.4 sqlite3 ssl stdc++
WANTLIB += tag tag_c tiff totem-plparser upower-glib uuid xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf \
			lang/python

LIB_DEPENDS=		x11/gnome/totem-pl-parser \
			print/poppler \
			devel/libgsf \
			sysutils/upower \
			textproc/exempi \
			sysutils/e2fsprogs>=1.42.7 \
			graphics/libexif \
			graphics/giflib \
			audio/libcue \
			converters/enca \
			audio/taglib \
			multimedia/gstreamer1/plugins-base \
			x11/gnome/nautilus

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

# needs libosinfo
CONFIGURE_ARGS +=	--disable-libosinfo

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

MODGNOME_LDFLAGS=	-Wl,-rpath,${TRUEPREFIX}/lib/tracker-${MAJ_V}

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/meta-tracker/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/tracker-needle/tracker-utils.vala
	perl -pi -e 's,/usr/bin,${LOCALBASE}/bin,' \
		${WRKSRC}/src/tracker-needle/tracker-utils.vala

post-install:
	rm ${PREFIX}/lib/tracker-${MAJ_V}/extract-modules/*.la
	rm ${PREFIX}/lib/tracker-${MAJ_V}/writeback-modules/*.la
#	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/plugins/*.la
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.la

do-test:
	cd ${WRKBUILD}/tests/functional-tests && ${MAKE_PROGRAM}

.include <bsd.port.mk>
