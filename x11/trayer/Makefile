# $OpenBSD: Makefile,v 1.8 2010/07/30 08:02:59 ajacoutot Exp $

COMMENT=		lightweight GTK2-based systray

DISTNAME=		trayer-1.0
REVISION=		4
CATEGORIES=		x11

HOMEPAGE=		http://fvwm-crystal.org/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png z pthread-stubs xcb gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdk_pixbuf_xlib-2.0 gtk-x11-2.0

MASTER_SITES=		${MASTER_SITE_BERLIOS:=fvwm-crystal/}

USE_GMAKE=		Yes

MODULES=		devel/gettext

LIB_DEPENDS=		::x11/gtk+2

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DG_DISABLE_DEPRECATED \
			-DGDK_DISABLE_DEPRECATED -DGTK_DISABLE_DEPRECATED"

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trayer ${PREFIX}/bin

.include <bsd.port.mk>
