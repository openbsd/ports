# $OpenBSD: Makefile,v 1.32 2013/05/31 15:34:50 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	HTML renderer plugin for Claws Mail

VERSION=	0.33
REVISION=	1
DISTNAME=	gtkhtml2_viewer-${VERSION}
PKGNAME=	claws-mail-htmlviewer-${VERSION}
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
CATEGORIES=	mail
DIST_SUBDIR=	claws

HOMEPAGE=	http://www.claws-mail.org/plugin.php?plugin=gtkhtml2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	devel/gettext

RUN_DEPENDS=	mail/claws-mail>=3.8.1
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	textproc/libxml \
		net/curl \
		x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo crypto expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 idn m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs ssl xcb
WANTLIB += xcb-render z gdk_pixbuf-2.0 GL Xxf86vm drm xcb-shm
WANTLIB += xml2 curl gdk-x11-2.0 gtk-x11-2.0
WANTLIB += ffi harfbuzz pthread stdc++

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
