# $OpenBSD: Makefile,v 1.26 2015/03/27 08:16:24 ajacoutot Exp $

COMMENT =	Thunar vcs integration plugin

XFCE_VERSION =	0.1.4
THUNAR_PLUGIN =	thunar-vcs-plugin
REVISION=	7

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4

AUTOCONF_VERSION =	2.68
CONFIGURE_STYLE =	autoconf

# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'

MODXFCE_ICON_CACHE=	Yes

RUN_DEPENDS =	x11/xfce4/thunar \
		devel/git
BUILD_DEPENDS +=x11/xfce4/thunar

LIB_DEPENDS =	x11/gtk+2 \
		devel/subversion

WANTLIB += apr-1 c cairo gdk-x11-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += svn_client-1 svn_fs-1 svn_subr-1 svn_wc-1 xfce4util

.include <bsd.port.mk>
