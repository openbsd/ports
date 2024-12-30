COMMENT=		GObject Introspection

GNOME_VERSION=		1.82.0
GNOME_PROJECT=		gobject-introspection
REVISION=		3

CATEGORIES=		devel

SHARED_LIBS += girepository-1.0          3.2 # 1.0.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Library: LGPLv2+
# Tools: GPLv2+
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			lang/python \
			x11/gnome

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m

DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_ARGS=		-Dcairo_libname=libcairo-gobject.so

# cairo is only needed for tests;
# prevent cyclic dependency: g-o-i -> cairo -> glib2 -> g-o-i
CONFIGURE_ARGS +=	-Dcairo=disabled

BUILD_DEPENDS=		devel/bison \
			textproc/py-markdown \
			www/py-mako

RUN_DEPENDS=		textproc/py-markdown \
			www/py-mako

# XXX work-around for dpb limitations: trick dpb scanner into being
# happy with glib2-bootstrap as a RUN_DEPENDS
#LIB_DEPENDS +=		devel/glib2
BUILD_DEPENDS +=	devel/glib2,bootstrap
.if defined(DPB)
RUN_DEPENDS +=		devel/glib2,bootstrap
.else
RUN_DEPENDS +=		glib2-*:devel/glib2
.endif

# g-ir-scanner uses distutils functions. as of Python 3.12 these have been
# removed from Python core and are only available in setuptools.
# could be removed if/when gobject-introspection stops using distutils;
# see https://gitlab.gnome.org/GNOME/gobject-introspection/-/issues/395
BUILD_DEPENDS +=	devel/py-setuptools
RUN_DEPENDS +=		devel/py-setuptools

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
# tools/g-ir-scanner doesn't respect LDFLAGS passed through CONFIGURE_ENV
MAKE_ENV=		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
.endif

# XXX: tidy-up some GNU-isms;
# tests/scanner/test_transformer.py fails otherwise
TEST_DEPENDS +=		textproc/gsed
pre-test:
	sed -i 's,\"sed ,\"gsed ,g' ${WRKSRC}/tests/scanner/test_transformer.py

.include <bsd.port.mk>
