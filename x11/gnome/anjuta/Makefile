# $OpenBSD: Makefile,v 1.24 2011/04/28 13:10:57 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		versatile IDE for C and C++

GNOME_PROJECT=		anjuta
GNOME_VERSION=		2.32.1.1

REVISION=		2

SHARED_LIBS +=  anjuta-foocanvas     0.0      # 0.0
SHARED_LIBS +=  anjuta               0.0      # 0.0
SHARED_LIBS +=  python_plugin        0.0      # 0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gconf2 \
			devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt apr-1
WANTLIB += aprutil-1 asn1 atk-1.0 c cairo crypto db dbus-1 dbus-glib-1
WANTLIB += devhelp-2 enchant execinfo expat fontconfig freetype
WANTLIB += gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnutls gobject-2.0 gpg-error
WANTLIB += gssapi gstbase-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 gtk-x11-2.0 icui18n
WANTLIB += jpeg krb5 m ncurses neon pango-1.0 pangocairo-1.0 gdl-1
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 soup-2.4 sqlite3 ssl startup-notification-1 stdc++ vte
WANTLIB += tasn1 unique-1.0 util webkit-1.0 wnck-1 xcb xcb-atom
WANTLIB += xcb-aux xcb-event xcb-render xml2 xslt z
WANTLIB += gstapp-0.10 gladeui-1 gtksourceview-2.0
WANTLIB += svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1 svn_fs_base-1
WANTLIB += svn_fs_fs-1 svn_ra-1 svn_ra_local-1 svn_ra_svn-1 svn_repos-1
WANTLIB += svn_subr-1 svn_wc-1 svn_fs_util-1 svn_ra_neon-1 cdt
WANTLIB += gda-4.0 ltdl gnome-keyring gvc graph pathplan
WANTLIB += ${MODPY_WANTLIB} GL Xxf86vm drm icudata icuuc xcb-shm

BUILD_DEPENDS=		devel/autogen>=5.6.5 \
			devel/p5-Locale-gettext \
			devel/gobject-introspection
RUN_DEPENDS=		misc/shared-mime-info \
			devel/p5-Locale-gettext
LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			devel/glade3 \
			devel/subversion \
			devel/vte \
			math/graphviz \
			x11/gnome/gdl \
			x11/gnome/libgda \
			x11/gtksourceview

# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL=	gnu

LIBTOOL_FLAGS=		--tag=disable-static
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	anjuta

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-plugin-subversion \
			--enable-gtk-doc=no \
			--enable-debug \
			--enable-introspection

# XXX re-enable when it supports vala>=0.12.0
CONFIGURE_ARGS+=	--disable-vala

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
