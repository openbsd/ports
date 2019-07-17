# $OpenBSD: Makefile,v 1.38 2019/07/17 14:49:21 danj Exp $

# XXX doesn't build if already installed
COMMENT=	graphical subversion client

VERSION=	0.12.1
DISTNAME=	rapidsvn-${VERSION}
CATEGORIES=	devel
REVISION=	14

HOMEPAGE=	http://www.rapidsvn.org/

SHARED_LIBS=	svncpp	1.0

MASTER_SITES=	${HOMEPAGE}download/release/${VERSION}/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += apr-1 aprutil-1 atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject db dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl jpeg lz4 m mspack notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png samplerate
WANTLIB += sasl2 serf-1 sndio sqlite3 svn_client-1 svn_delta-1
WANTLIB += svn_diff-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1
WANTLIB += svn_fs_x-1 svn_ra-1 svn_ra_local-1 svn_ra_serf-1 svn_ra_svn-1
WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1 tiff usbhid wx_baseu-3.0
WANTLIB += wx_baseu_net-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0
WANTLIB += wx_gtk3u_core-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0
WANTLIB += wx_gtk3u_xrc-3.0 xcb xcb-render xcb-shm z

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	x11/wxWidgets>=3.0.4 \
		devel/subversion \
		databases/sqlite3
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-apr-config=${LOCALBASE}/bin/apr-1-config \
		--with-apu-config=${LOCALBASE}/bin/apu-1-config \
		--with-doxygen=no \
		--with-manpage=no

pre-configure:
	perl -pi -e 's,static char,static const char,' \
	    ${WRKSRC}/src/res/bitmaps/*xpm

.include <bsd.port.mk>
