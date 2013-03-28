# $OpenBSD: Makefile,v 1.81 2013/03/28 21:56:31 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		versatile IDE for GNOME

GNOME_PROJECT=		anjuta
GNOME_VERSION=		3.6.2
REVISION=		0

SHARED_LIBS +=  anjuta-3             0.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage orc-0.4
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += apr-1 aprutil-1 asn1 atk-1.0 c cairo cairo-gobject
WANTLIB += crypto db devhelp-3 drm enchant expat ffi fontconfig
WANTLIB += freetype gailutil-3 gconf-2 gdk-3 gdk_pixbuf-2.0 gdl-3
WANTLIB += gio-2.0 gladeui-2 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssapi gstapp-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 icudata icui18n icuuc jpeg
WANTLIB += krb5 m ncurses neon pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sasl2
WANTLIB += soup-2.4 sqlite3 ssl stdc++ svn_client-1 svn_delta-1
WANTLIB += svn_diff-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1
WANTLIB += svn_ra-1 svn_ra_local-1 svn_ra_neon-1 svn_ra_svn-1
WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1 util vala-0.20 vte2_90
WANTLIB += webkitgtk-3.0 xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += dbus-1 dbus-glib-1 javascriptcoregtk-3.0 magic
WANTLIB += gcrypt gda-5.0 gpg-error atk-bridge-2.0 atspi harfbuzz
WANTLIB += geoclue gstaudio-0.10 gstfft-0.10 proxy icule secret-1
WANTLIB += ${MODPY_WANTLIB}

BUILD_DEPENDS=		devel/autogen>=5.6.5 \
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

LIBTOOL_FLAGS=		--tag=disable-static
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

# XXX: Re-enable on update if/when vala 0.20 is supported
MODGNOME_TOOLS= 	goi yelp #vala

YACC=			bison -y

CONFIGURE_ARGS+=	--disable-static \
			--enable-plugin-subversion \
			--with-symbol-db-shm=/tmp

# XXX: needed because of patch-m4_intltool_m4 (and patch-configure_ac)
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/project-wizard/templates/pygtk.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/python.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/pygtk/src/main.py \
		${WRKSRC}/plugins/project-wizard/templates/python/src/main.py

post-install:
	rm ${PREFIX}/lib/anjuta/*.la
	rm ${PREFIX}/lib/glade/modules/*.la

.include <bsd.port.mk>
