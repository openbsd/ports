# $OpenBSD: Makefile,v 1.34 2019/08/15 06:56:53 landry Exp $

COMMENT =	Thunar vcs integration plugin

XFCE_VERSION =	0.2.0
THUNAR_PLUGIN =	thunar-vcs-plugin

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender apr-1 aprutil-1 atk-1.0 c cairo
WANTLIB += db exo-2 expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += sasl2 serf-1 sqlite3 svn_client-1 svn_delta-1
WANTLIB += svn_diff-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1
WANTLIB += svn_fs_x-1 svn_ra-1 svn_ra_local-1 svn_ra_serf-1 svn_ra_svn-1
WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1 thunarx-3 xcb xcb-render
WANTLIB += xcb-shm xfce4util z iconv intl
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy fribidi lz4

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/thunarx-3

RUN_DEPENDS =	devel/git

LIB_DEPENDS =	x11/xfce4/thunar>=1.7.0 \
		devel/subversion


.include <bsd.port.mk>
