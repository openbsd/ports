# $OpenBSD: Makefile,v 1.47 2011/10/19 12:17:54 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		versatile IDE for GNOME

GNOME_PROJECT=		anjuta
GNOME_VERSION=		3.2.1

SHARED_LIBS +=  anjuta-3             0.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
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
WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1 util vala-0.14 vte2_90
WANTLIB += webkitgtk-3.0 xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += dbus-1 dbus-glib-1 javascriptcoregtk-3.0 magic
WANTLIB += ${MODPY_WANTLIB}

BUILD_DEPENDS=		devel/autogen>=5.6.5 \
			devel/bison
# libgda is needed by the symbol-db plugin, which we don't build on OpenBSD.
# though GDA_CFLAGS is used in various Makefile's. So instead of changing
# dozens of files, we just drop the LIB_DEPENDS and keep the BUILD_DEPENDS.
BUILD_DEPENDS+=		x11/gnome/libgda
RUN_DEPENDS=		misc/shared-mime-info
LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			devel/glade \
			devel/subversion,gnome_keyring \
			devel/vte3 \
			lang/vala>=0.13.4 \
			textproc/icu4c \
			x11/gnome/devhelp \
			x11/gnome/gdl \
			x11/gtksourceview3

LIBTOOL_FLAGS=		--tag=disable-static
MODGNOME_DESKTOP_FILE=		Yes

MODGNOME_TOOLS= 	goi vala yelp

AUTOCONF_VERSION=	2.68

CONFIGURE_STYLE=	autoconf gnu
CONFIGURE_ARGS+=	--enable-plugin-subversion

# adds dependency on libgnomeui
CONFIGURE_ARGS+=	--disable-graphviz

# The Symbol Browser plugin isn't built on OpenBSD due to the lack of an
# shm_open() implementation. So remove the "Symbol Browser" as a requirement
# from these templates. It's just a really-nice-to-have, instead of a must-have.
post-extract:
	cd ${WRKSRC}/plugins/project-wizard/templates/ && \
		for t in `find . -type f -name '*.anjuta'`; \
		do \
			sed '/<plugin name="Symbol Browser/,/<\/plugin>/d' \
				$$t > $$t.new && mv $$t.new $$t; \
		done

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/project-wizard/templates/pygtk.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/python.wiz.in \
		${WRKSRC}/plugins/project-wizard/templates/pygtk/src/main.py \
		${WRKSRC}/plugins/project-wizard/templates/python/src/main.py

.include <bsd.port.mk>
