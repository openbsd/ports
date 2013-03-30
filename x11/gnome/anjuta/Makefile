# $OpenBSD: Makefile,v 1.82 2013/03/30 10:48:34 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		versatile IDE for GNOME

GNOME_PROJECT=		anjuta
GNOME_VERSION=		3.8.0

SHARED_LIBS +=  anjuta-3             0.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome
WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt apr-1 aprutil-1 asn1
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += crypto db dbus-1 dbus-glib-1 devhelp-3 enchant expat
WANTLIB += ffi fontconfig freetype gailutil-3 gcrypt gda-5.0 gdk-3
WANTLIB += gdk_pixbuf-2.0 gdl-3 geoclue gio-2.0 gladeui-2 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gssapi
WANTLIB += gstapp-0.10 gstaudio-0.10 gstbase-0.10 gstfft-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz icudata
WANTLIB += icui18n icule icuuc javascriptcoregtk-3.0 jpeg krb5
WANTLIB += m magic ncurses neon orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png proxy pthread pthread-stubs
WANTLIB += sasl2 secret-1 soup-2.4 sqlite3 ssl stdc++ svn_client-1
WANTLIB += svn_delta-1 svn_diff-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1
WANTLIB += svn_fs_util-1 svn_ra-1 svn_ra_local-1 svn_ra_neon-1
WANTLIB += svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1 util vte2_90
WANTLIB += webkitgtk-3.0 xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += ${MODPY_WANTLIB}

BUILD_DEPENDS=		devel/autogen>=5.6.5 \
			devel/bison
RUN_DEPENDS=		misc/shared-mime-info \
			devel/subversion,-gnome-keyring
LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			devel/glade \
			devel/subversion \
			devel/vte3 \
			textproc/icu4c \
			x11/gnome/devhelp \
			x11/gnome/gdl \
			x11/gtksourceview3 \
			x11/gnome/libgda

# needed by plugins/class-gen/plugin.c
RUN_DEPENDS +=		devel/autogen

LIBTOOL_FLAGS=		--tag=disable-static
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

# XXX: Re-enable on update if/when vala 0.20 is supported
MODGNOME_TOOLS= 	goi yelp #vala

YACC=			bison -y

CONFIGURE_ARGS+=	--disable-static \
			--enable-plugin-subversion \
			--with-symbol-db-shm=/tmp

# XXX: needed because of patch-m4_intltool_m4
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/project-wizard/templates/pygtk.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/python.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/pygtk/src/main.py \
		${WRKSRC}/plugins/project-wizard/templates/python/src/main.py

post-install:
	rm ${PREFIX}/lib/anjuta/*.la

.include <bsd.port.mk>
