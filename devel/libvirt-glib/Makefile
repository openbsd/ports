COMMENT=		libvirt wrapper suited for GObject-based applications

DISTNAME=		libvirt-glib-4.0.0
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		devel sysutils

SHARED_LIBS += virt-glib-1.0             2.3 # 0.4000.0
SHARED_LIBS += virt-gconfig-1.0          2.3 # 0.4000.0
SHARED_LIBS += virt-gobject-1.0          2.3 # 0.4000.0

HOMEPAGE=		https://libvirt.org/

MASTER_SITES=		https://libvirt.org/sources/glib/ \
			ftp://libvirt.org/libvirt/glib/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl virt xml2

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/gobject-introspection \
			lang/vala

LIB_DEPENDS=		sysutils/libvirt

CONFIGURE_ARGS=		-Ddocs=disabled \
			-Dtests=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
