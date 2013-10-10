# $OpenBSD: Makefile,v 1.21 2013/10/10 09:56:13 stsp Exp $

# XXX doesn't build if already installed
COMMENT=	graphical subversion client

VERSION=	0.12.1
DISTNAME=	rapidsvn-${VERSION}
CATEGORIES=	devel
REVISION=	3

HOMEPAGE=	http://www.rapidsvn.org/

SHARED_LIBS=	svncpp	1.0

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${HOMEPAGE}download/release/${VERSION}/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

WANTLIB += ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm apr-1 aprutil-1
WANTLIB += asn1 atk-1.0 c cairo crypto db expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iodbc jpeg krb5 m magic mspack
WANTLIB += serf-1 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sasl2 sndio sqlite3
WANTLIB += stdc++ svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1
WANTLIB += svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1 svn_ra-1 svn_ra_local-1
WANTLIB += svn_ra_serf-1 svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1
WANTLIB += tiff usbhid wx_base wx_base_net wx_base_odbc wx_base_xml
WANTLIB += wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid
WANTLIB += wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc
WANTLIB += com_err graphite2 heimbase roken wind
WANTLIB += xcb xcb-render xcb-shm z

LIB_DEPENDS=	x11/wxWidgets>=2.6.3 \
		devel/subversion>=1.2
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
