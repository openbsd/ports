COMMENT=	CAD program for designing model railroad layouts

VERSION=	5.2.2
DISTNAME=	xtrkcad-source-${VERSION}GA
PKGNAME=	xtrkcad-${VERSION}
CATEGORIES=	cad
REVISION=	3

HOMEPAGE=	https://xtrkcad-fork.sourceforge.net/Wikka/HomePage

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

SITES=		${SITE_SOURCEFORGE:=xtrkcad-fork/}

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z zip

# force update if the statically linked mxml is updated.
WANTLIB += mxml

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS=	archivers/libzip \
		devel/pango \
		graphics/cairo \
		graphics/gdk-pixbuf2 \
		textproc/mxml \
		x11/gnome/at-spi2-core \
		x11/gtk+2

CONFIGURE_ARGS +=	-DXTRKCAD_USE_GETTEXT=on
CONFIGURE_ENV +=	CFLAGS=-I${PREFIX}/include \
		LDFLAGS="-pthread -L/usr/X11R6/lib -L${PREFIX}/lib -liconv -lintl"

# patches/patch-app_i18n_fi_po
FIX_CRLF_FILES=	${WRKSRC}/app/i18n/fi.po

.include <bsd.port.mk>
