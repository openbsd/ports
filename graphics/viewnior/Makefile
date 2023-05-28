COMMENT=		fast and simple image viewer

V=			1.8
GH_ACCOUNT=		hellosiyan
GH_PROJECT=		Viewnior
GH_TAGNAME=		viewnior-${V}
DISTNAME=		viewnior-${V}

CATEGORIES=		graphics x11

HOMEPAGE=		http://siyanpanayotov.com/project/viewnior/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c exiv2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 intl m

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		graphics/exiv2 \
			x11/gtk+2

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+4,-guic

# detect images using mimetype
BUILD_DEPENDS +=	misc/shared-mime-info
RUN_DEPENDS +=		misc/shared-mime-info

.include <bsd.port.mk>
