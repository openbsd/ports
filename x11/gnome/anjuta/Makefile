# $OpenBSD: Makefile,v 1.130 2015/07/18 22:29:56 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		versatile IDE for GNOME

GNOME_PROJECT=		anjuta
GNOME_VERSION=		3.16.0
REVISION=		1

SHARED_LIBS +=  anjuta-3             0.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += apr-1 aprutil-1 atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject crypto db dbus-1 devhelp-3 drm enchant
WANTLIB += estdc++ expat ffi fontconfig freetype gbm gcrypt gda-5.0
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdl-3 gio-2.0 gladeui-2 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz harfbuzz-icu icudata icui18n
WANTLIB += icuuc javascriptcoregtk-4.0 jpeg lzma m orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sasl2 secret-1 serf-1 soup-2.4 sqlite3
WANTLIB += ssl stdc++ svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1
WANTLIB += svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1 svn_ra-1 svn_ra_local-1
WANTLIB += svn_ra_serf-1 svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1
WANTLIB += util vala-0.28 vte-2.91 webkit2gtk-4.0 webp xcb xcb-dri2
WANTLIB += xcb-glx xcb-render xcb-shape xcb-shm xcb-xfixes xml2
WANTLIB += epoxy gmp gnutls hogweed nettle notify p11-kit tasn1 xslt z

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
			www/webkitgtk4 \
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

CONFIGURE_ARGS=		--with-symbol-db-shm=/tmp \
			--disable-neon

pre-configure:
	sed -i "s,/usr/bin/python,${MODPY_BIN},g" \
		${WRKSRC}/plugins/language-support-python/org.gnome.anjuta.plugins.python.gschema.xml.in

	sed -i "s,>python<,>python${MODPY_VERSION}<,g" \
		${WRKSRC}/plugins/project-wizard/templates/pygtk.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/python.wiz.in

post-install:
	rm ${PREFIX}/lib/anjuta/*.{a,la}

.include <bsd.port.mk>
