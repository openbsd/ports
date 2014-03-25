# $OpenBSD: Makefile,v 1.107 2014/03/25 09:00:47 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		versatile IDE for GNOME

GNOME_PROJECT=		anjuta
GNOME_VERSION=		3.10.2
REVISION=		1

SHARED_LIBS +=  anjuta-3             0.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt apr-1 aprutil-1 asn1
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += com_err crypto db dbus-1 dbus-glib-1 devhelp-3 enchant
WANTLIB += expat ffi fontconfig freetype gcrypt gda-5.0 gdk-3
WANTLIB += gdk_pixbuf-2.0 gdl-3 geoclue gio-2.0 gladeui-2 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gssapi
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz harfbuzz-icu heimbase icudata
WANTLIB += icui18n icuuc javascriptcoregtk-3.0 jpeg krb5 m magic
WANTLIB += ncurses serf-1 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs roken
WANTLIB += sasl2 secret-1 soup-2.4 sqlite3 ssl stdc++ svn_client-1
WANTLIB += svn_delta-1 svn_diff-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1
WANTLIB += svn_fs_util-1 svn_ra-1 svn_ra_local-1 svn_ra_serf-1
WANTLIB += svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1 util vala-0.24
WANTLIB += vte2_90 webkit2gtk-3.0 webp wind xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z orc-0.4
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
			lang/vala>=0.22.0 \
			textproc/icu4c \
			x11/gnome/devhelp>=3.10.0 \
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
MODGNOME_MIME_FILE=	Yes

MODGNOME_TOOLS= 	gi yelp vala

YACC=			bison -y

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--disable-static \
			--with-symbol-db-shm=/tmp \
			--disable-neon

pre-configure:
	perl -pi -e "s,/usr/bin/python,${MODPY_BIN},g" \
		${WRKSRC}/plugins/project-wizard/templates/pygtk/src/main.py \
		${WRKSRC}/plugins/project-wizard/templates/python/src/main.py \
		${WRKSRC}/plugins/language-support-python/org.gnome.anjuta.plugins.python.gschema.xml.in

	perl -pi -e "s,>python<,>python${MODPY_VERSION}<,g" \
		${WRKSRC}/plugins/project-wizard/templates/pygtk.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/python.wiz.in

post-install:
	rm ${PREFIX}/lib/anjuta/*.la

.include <bsd.port.mk>
