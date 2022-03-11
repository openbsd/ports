COMMENT=	CAD program for designing model railroad layouts

VERSION=	5.2.2
DISTNAME=	xtrkcad-source-${VERSION}GA
PKGNAME=	xtrkcad-${VERSION}
CATEGORIES=	cad

HOMEPAGE=	http://xtrkcad-fork.sourceforge.net/Wikka/HomePage

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xtrkcad-fork/}

MODULES=	devel/cmake

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender c fontconfig freetype m pthread z
WANTLIB += cairo gio-2.0 glib-2.0 gobject-2.0 iconv intl zip
WANTLIB += harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += gdk_pixbuf-2.0 atk-1.0 gdk-x11-2.0 gtk-x11-2.0

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS=	archivers/libzip \
		devel/atk \
		devel/pango \
		graphics/cairo \
		graphics/gdk-pixbuf2 \
		x11/gtk+2

CONFIGURE_ARGS +=	-DXTRKCAD_USE_GETTEXT=on
CONFIGURE_ENV +=	CFLAGS=-I${PREFIX}/include \
		LDFLAGS="-pthread -L/usr/X11R6/lib -L${PREFIX}/lib -liconv -lintl"

.include <bsd.port.mk>
