# $OpenBSD: Makefile,v 1.16 2013/03/11 11:46:09 espie Exp $

COMMENT=	GTK-based BDF font editor

DISTNAME=	gbdfed-1.6
REVISION=	1

CATEGORIES=	x11 fonts
HOMEPAGE=	http://www.math.nmsu.edu/~mleisher/Software/gbdfed/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-render-util
WANTLIB += z gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tbz2

USE_GROFF =	Yes

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2

CONFIGURE_STYLE=gnu
# leakage from bsd.own.mk
MAKE_ENV=	STATIC=""

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gbdfed ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/gbdfed.man ${PREFIX}/man/man1/gbdfed.1

.include <bsd.port.mk>
