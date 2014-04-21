# $OpenBSD: Makefile,v 1.22 2014/04/21 16:13:07 ajacoutot Exp $

# XXX doesn't build if already installed
COMMENT=	graphical subversion client

VERSION=	0.12.1
DISTNAME=	rapidsvn-${VERSION}
CATEGORIES=	devel
REVISION=	4

HOMEPAGE=	http://www.rapidsvn.org/

SHARED_LIBS=	svncpp	1.0

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${HOMEPAGE}download/release/${VERSION}/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm apr-1 aprutil-1
WANTLIB += atk-1.0 c cairo db expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iodbc jpeg
WANTLIB += m magic mspack pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sasl2 serf-1
WANTLIB += sndio sqlite3 stdc++ svn_client-1 svn_delta-1 svn_diff-1
WANTLIB += svn_fs-1 svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1 svn_ra-1
WANTLIB += svn_ra_local-1 svn_ra_serf-1 svn_ra_svn-1 svn_repos-1
WANTLIB += svn_subr-1 svn_wc-1 tiff usbhid wx_base wx_base_net
WANTLIB += wx_base_odbc wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core
WANTLIB += wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext
WANTLIB += wx_gtk2_xrc xcb xcb-render xcb-shm z

USE_GMAKE=	Yes

LIB_DEPENDS=	x11/wxWidgets \
		devel/subversion
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-apr-config=${LOCALBASE}/bin/apr-1-config \
		--with-apu-config=${LOCALBASE}/bin/apu-1-config \
		--with-doxygen=no \
		--with-manpage=no

pre-configure:
	perl -pi -e 's,static char,static const char,' \
	    ${WRKSRC}/src/res/bitmaps/*xpm

.include <bsd.port.mk>
