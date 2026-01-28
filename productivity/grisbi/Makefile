COMMENT=	personal accounting application

DISTNAME=	grisbi-3.90.1

EXTRACT_SUFX=	.tar.xz
SITES=		${SITE_SOURCEFORGE:=grisbi/}

CATEGORIES=	productivity x11

HOMEPAGE=	https://www.grisbi.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo crypto gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 goffice-0.10 gtk-3 intl m ofx pango-1.0
WANTLIB += pangocairo-1.0 xml2 z

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/dconf devel/meson

LIB_DEPENDS=	textproc/libxml \
		x11/gtk+3 \
		devel/goffice \
		devel/libofx

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

BUILD_DEPENDS=	devel/gettext,-tools

CONFIGURE_ARGS=	-Dgoffice=true

.include <bsd.port.mk>
