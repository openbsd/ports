COMMENT =	Thunar vcs integration plugin

XFCE_VERSION =	0.4.0
THUNAR_PLUGIN =	thunar-vcs-plugin

HOMEPAGE = https://docs.xfce.org/xfce/thunar/${THUNAR_PLUGIN}

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/xfce4 devel/meson

MODXFCE_ICON_CACHE=	Yes

RUN_DEPENDS =	devel/git

LIB_DEPENDS =	x11/xfce4/thunar \
		devel/subversion

WANTLIB += apr-1 c cairo exo-2 gdk-3 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl pango-1.0 svn_client-1 svn_fs-1 svn_subr-1 svn_wc-1
WANTLIB += thunarx-3 xfce4util

.include <bsd.port.mk>
