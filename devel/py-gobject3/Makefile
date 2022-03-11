COMMENT=		Python bindings for GLib and GObject

GNOME_PROJECT=		pygobject
GNOME_VERSION=		3.42.0
MODPY_EGG_VERSION=	${GNOME_VERSION}
PKGNAME=		py3-gobject3-${GNOME_VERSION}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		http://www.pygtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += cairo cairo-gobject ffi gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gobject-2.0 intl pthread

FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection
MODPY_SETUPTOOLS=	Yes

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=737874
MODULES +=		gcc4
MODGCC4_ARCHS=		${GCC3_ARCHS} ${GCC4_ARCHS}

BUILD_DEPENDS=		graphics/py-cairo${MODPY_FLAVOR}

LIB_DEPENDS=		devel/gobject-introspection
RUN_DEPENDS=		graphics/py-cairo${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

CONFIGURE_ARGS=		-Dpython=python${MODPY_VERSION}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
