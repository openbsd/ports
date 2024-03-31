COMMENT=		Python bindings for GLib and GObject

GNOME_PROJECT=		pygobject
GNOME_VERSION=		3.48.1
MODPY_EGG_VERSION=	${GNOME_VERSION}
PKGNAME=		py3-gobject3-${GNOME_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://pygobject.readthedocs.io/en/latest/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += cairo cairo-gobject ffi girepository-1.0 glib-2.0 gobject-2.0

FLAVORS=		python3
FLAVOR=			python3

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

MODPY_PYBUILD=		setuptools

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=737874
MODULES +=		gcc4
MODGCC4_ARCHS=		${GCC3_ARCHS} ${GCC4_ARCHS}

BUILD_DEPENDS=		graphics/py-cairo${MODPY_FLAVOR}

LIB_DEPENDS=		devel/gobject-introspection \
			graphics/cairo

RUN_DEPENDS=		graphics/py-cairo${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

CONFIGURE_ARGS=		-Dpython=python${MODPY_VERSION}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
