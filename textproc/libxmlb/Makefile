COMMENT=		library to help create and query binary XML blobs

V=			0.3.19
DISTNAME=		libxmlb-${V}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS += xmlb                      0.1 # 2.0.0

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://github.com/hughsie/libxmlb

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 lzma zstd

SITES=		https://github.com/hughsie/libxmlb/releases/download/${V}/

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gobject-introspection \
			textproc/gtk-doc

LIB_DEPENDS=		archivers/zstd \
			devel/glib2

.include <bsd.port.mk>
