# $OpenBSD: Makefile,v 1.14 2013/10/11 23:51:49 naddy Exp $

COMMENT=	simple xrandr config tool

DISTNAME=	lxrandr-0.1.2
REVISION=	0

CATEGORIES=	x11 sysutils

HOMEPAGE=	http://lxde.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lxde/}

MODULES=	devel/gettext
# needed for regression test
MODULES+=	textproc/intltool

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
