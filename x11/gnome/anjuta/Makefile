# $OpenBSD: Makefile,v 1.115 2014/04/21 16:08:36 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		versatile IDE for GNOME

GNOME_PROJECT=		anjuta
GNOME_VERSION=		3.12.0
REVISION=		2

SHARED_LIBS +=  anjuta-3             0.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt apr-1 aprutil-1 atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject crypto db
WANTLIB += dbus-1 dbus-glib-1 devhelp-3 enchant expat ffi fontconfig
WANTLIB += freetype gcrypt gda-5.0 gdk-3 gdk_pixbuf-2.0 gdl-3
WANTLIB += geoclue gio-2.0 gladeui-2 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz
WANTLIB += harfbuzz-icu icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg m magic ncurses orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 secret-1 serf-1 soup-2.4 sqlite3 ssl stdc++ svn_client-1
WANTLIB += svn_delta-1 svn_diff-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1
WANTLIB += svn_fs_util-1 svn_ra-1 svn_ra_local-1 svn_ra_serf-1
WANTLIB += svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1 util vala-0.24
WANTLIB += vte2_90 webkit2gtk-3.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z
WANTLIB += ${MODPY_WANTLIB}

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/autogen \
			devel/bison

RUN_DEPENDS=		devel/subversion,-gnome-keyring

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			devel/glade \
			devel/subversion \
			devel/vte3 \
			lang/vala \
			textproc/icu4c \
			x11/gnome/devhelp \
			x11/gnome/gdl \
			x11/gtksourceview3 \
			x11/gnome/libgda

# needed by plugins/class-gen/plugin.c
RUN_DEPENDS +=		devel/autogen

# needed by the python plugin
RUN_DEPENDS +=		devel/py-rope

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache shared-mime-info
MODGNOME_TOOLS += gobject-introspection vala yelp

YACC=			bison -y

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-symbol-db-shm=/tmp \
			--disable-neon

pre-configure:
	perl -pi -e "s,/usr/bin/python,${MODPY_BIN},g" \
		${WRKSRC}/plugins/language-support-python/org.gnome.anjuta.plugins.python.gschema.xml.in

	perl -pi -e "s,>python<,>python${MODPY_VERSION}<,g" \
		${WRKSRC}/plugins/project-wizard/templates/pygtk.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/python.wiz.in

post-install:
	rm ${PREFIX}/lib/anjuta/*.{a,la}

.include <bsd.port.mk>
