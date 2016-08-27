# $OpenBSD: Makefile,v 1.15 2016/08/27 17:35:19 jca Exp $

COMMENT=		lightweight GTK2-based systray

DISTNAME=		trayer-1.0
REVISION=		8
CATEGORIES=		x11

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xmu Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 intl pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES=		http://download.gna.org/fvwm-crystal/trayer/1.0/

USE_GMAKE=		Yes

LIB_DEPENDS=		devel/gettext \
			x11/gtk+2

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DG_DISABLE_DEPRECATED"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trayer ${PREFIX}/bin

.include <bsd.port.mk>
