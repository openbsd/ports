# $OpenBSD: Makefile,v 1.61 2013/09/27 17:49:11 ajacoutot Exp $

COMMENT=		project management application

GNOME_PROJECT=		planner
GNOME_VERSION=		0.14.6
EPOCH=			0
REVISION=		0

# Fedora patches as of 2013-08-04 04:26:11 (GMT)
MASTER_SITES0=		http://pkgs.fedoraproject.org/cgit/planner.git/plain/
PATCH_DIST_STRIP=	-p1
FEDORA_PATCHES=		planner-gnome596173-xdg \
			planner-gnome596966-editoninsert \
			planner-gnome550559-fitzoom \
			planner-gnome603693-planner-calendar-for-edittask \
			planner-gnome604169-comboboxentry \
			planner-gnome604510.calcolors \
			planner-gnome604531-tooltips \
			planner-gnome581282-printpreview \
			planner-gnome606824-notecolumn \
			planner-gnome341504-paste.tasks \
			planner-gnome615641-multiselect \
			planner-gnome655803-bad-LC_TIME \
			planner-desktop-warnings
.for p in ${FEDORA_PATCHES}
PATCHFILES +=		$p.patch:0
.endfor

CATEGORIES=		productivity

SHARED_LIBS +=  planner-1            0.0      # .0.0

HOMEPAGE=		http://live.gnome.org/Planner

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 c cairo
WANTLIB += canberra crypto dbus-1 dbus-glib-1 expat exslt ffi
WANTLIB += fontconfig freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz ltdl m ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png popt pthread pthread-stubs ssl util vorbis vorbisfile
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

RUN_DEPENDS=		misc/shared-mime-info

LIB_DEPENDS=		security/libgcrypt \
			textproc/libxslt \
			x11/gnome/libgnomecanvas \
			x11/gnome/libgnomeui

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGCONF2_SCHEMAS_DIR=	planner

CONFIGURE_ARGS= 	--disable-python \
			--disable-eds \
			--disable-eds-backend \
			--without-database

CONFIGURE_ARGS +=	--disable-update-mimedb

post-install:
	rm ${PREFIX}/lib/planner/{file-modules,plugins,storage-modules}/*.{a,la}

.include <bsd.port.mk>
