# $OpenBSD: Makefile,v 1.3 2010/04/08 11:33:12 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		versatile IDE for C and C++

GNOME_PROJECT=		anjuta
GNOME_VERSION=		2.28.2.0
PKGNAME=		${DISTNAME}p0

SHARED_LIBS=		anjuta		0.0	\
			anjuta-ctags 	0.0	\
			anjuta-egg	0.0	\
			file-manager	0.0	\
			language-manager	0.0
CATEGORIES=		devel

HOMEPAGE=		http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gconf2 \
			devel/gettext \
			x11/gnome

WANTLIB += ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt apr-1
WANTLIB += aprutil-1 asn1 atk-1.0 c cairo crypto db dbus-1 dbus-glib-1
WANTLIB += devhelp-1 enchant execinfo expat fontconfig freetype
WANTLIB += gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0 gpg-error
WANTLIB += gssapi gstbase-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 gtk-x11-2.0 icudata icui18n
WANTLIB += icuuc jpeg krb5 m ncurses neon pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 soup-2.4 sqlite3 ssl startup-notification-1 stdc++
WANTLIB += tasn1 unique-1.0 util webkit-1.0 wnck-1 xcb xcb-atom
WANTLIB += xcb-aux xcb-event xml2 xslt z

BUILD_DEPENDS=		:autogen->=5.6.5:devel/autogen \
			::devel/p5-Locale-gettext \
			::x11/gnome/libgda
RUN_DEPENDS=		::misc/shared-mime-info \
			::devel/p5-Locale-gettext
LIB_DEPENDS=		gladeui-1::devel/glade3 \
			svn_client-1,svn_delta-1,svn_diff-1,svn_fs-1,svn_fs_base-1,svn_fs_fs-1,svn_ra-1,svn_ra_local-1,svn_ra_svn-1,svn_repos-1,svn_subr-1,svn_wc-1,svn_fs_util-1,svn_ra_neon-1::devel/subversion \
			vte::devel/vte \
			gdl-1::x11/gnome/gdl \
			gtksourceview-2.0::x11/gtksourceview

LIBTOOL_FLAGS=		--tag=disable-static
USE_X11 =		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	anjuta

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-plugin-subversion \
			--enable-gtk-doc=no \
			--enable-debug

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		itlocaledir=${PREFIX}/share/locale/

.include <bsd.port.mk>
