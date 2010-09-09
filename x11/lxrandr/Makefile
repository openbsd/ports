# $OpenBSD: Makefile,v 1.6 2010/09/09 13:39:01 ajacoutot Exp $

COMMENT=	simple xrandr config tool

DISTNAME=	lxrandr-0.1.1

CATEGORIES=	x11 sysutils

HOMEPAGE=	http://lxde.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes cairo
WANTLIB += Xi Xinerama Xrandr Xrender c expat fontconfig freetype glitz
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 png
WANTLIB += m pixman-1 pthread pthread-stubs xcb xcb-render xcb-render-util
WANTLIB += z atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lxde/}

MODULES=	devel/gettext
# needed for regress
MODULES+=	textproc/intltool

LIB_DEPENDS=	::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
