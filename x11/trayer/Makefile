# $OpenBSD: Makefile,v 1.1.1.1 2007/03/15 07:25:32 jasper Exp $

COMMENT=		"lightweight GTK2-based systray"

DISTNAME=		trayer-1.0
CATEGORIES=		x11

HOMEPAGE=		http://fvwm-crystal.org/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xmu Xrender atk-1.0 c cairo fontconfig \
			freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 png z

MASTER_SITES=		${MASTER_SITE_BERLIOS:=fvwm-crystal/}

USE_GMAKE=		Yes

MODULES=		devel/gettext

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gdk_pixbuf_xlib-2.0,gtk-x11-2.0::x11/gtk+2

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DG_DISABLE_DEPRECATED \
			-DGDK_DISABLE_DEPRECATED -DGTK_DISABLE_DEPRECATED"

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trayer ${PREFIX}/bin

.include <bsd.port.mk>
