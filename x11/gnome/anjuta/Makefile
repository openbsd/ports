# $OpenBSD: Makefile,v 1.98 2013/09/24 18:53:29 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		versatile IDE for GNOME

GNOME_PROJECT=		anjuta
GNOME_VERSION=		3.8.4
REVISION=		2

SHARED_LIBS +=  anjuta-3             0.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt apr-1 aprutil-1 asn1
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += crypto db dbus-1 dbus-glib-1 devhelp-3 enchant expat
WANTLIB += ffi fontconfig freetype gailutil-3 gcrypt gda-5.0 gdk-3
WANTLIB += gdk_pixbuf-2.0 gdl-3 geoclue gio-2.0 gladeui-2 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gssapi
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg krb5 m magic ncurses neon
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png proxy pthread pthread-stubs sasl2 secret-1
WANTLIB += soup-2.4 sqlite3 ssl stdc++ svn_client-1 svn_delta-1
WANTLIB += svn_diff-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1
WANTLIB += svn_ra-1 svn_ra_local-1 svn_ra_neon-1 svn_ra_svn-1
WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1 util vte2_90 webkitgtk-3.0
WANTLIB += webp xcb xcb-render xcb-shm xml2 xslt z vala-0.20 wind
WANTLIB += com_err harfbuzz-icu heimbase roken
WANTLIB += ${MODPY_WANTLIB}

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/autogen \
			devel/bison

RUN_DEPENDS=		misc/shared-mime-info \
			devel/subversion,-gnome-keyring

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			devel/glade \
			devel/subversion \
			devel/vte3 \
			lang/vala>=0.20.0 \
			textproc/icu4c \
			x11/gnome/devhelp \
			x11/gnome/gdl \
			x11/gtksourceview3 \
			x11/gnome/libgda

# needed by plugins/class-gen/plugin.c
RUN_DEPENDS +=		devel/autogen

# needed by the python plugin
RUN_DEPENDS +=		devel/py-rope

LIBTOOL_FLAGS=		--tag=disable-static
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

MODGNOME_TOOLS= 	gi yelp vala

YACC=			bison -y

CONFIGURE_ARGS+=	--disable-static \
			--with-symbol-db-shm=/tmp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/project-wizard/templates/pygtk.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/python.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/pygtk/src/main.py \
		${WRKSRC}/plugins/project-wizard/templates/python/src/main.py \
		${WRKSRC}/plugins/language-support-python/org.gnome.anjuta.plugins.python.gschema.xml.in

post-install:
	rm ${PREFIX}/lib/anjuta/*.la

.include <bsd.port.mk>
