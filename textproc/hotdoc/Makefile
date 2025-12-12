COMMENT=		documentation tool micro-framework

MODPY_DISTV=		0.17.4
DISTNAME=		hotdoc-${MODPY_DISTV}
REVISION=		2

CATEGORIES=		textproc

HOMEPAGE=		https://hotdoc.github.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0 xml2

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
MODPY_TEST_LINK_SO=	Yes

BUILD_DEPENDS=		devel/cmake/core

LIB_DEPENDS=		devel/json-glib \
			textproc/libxml

RUN_DEPENDS=		devel/py-appdirs \
			devel/py-dbus-deviation \
			devel/py-decorator \
			devel/py-pkgconfig \
			devel/py-schema \
			devel/py-toposort \
			devel/py-wheezy.template \
			math/py-networkx>=2.6.2 \
			textproc/py-cchardet \
			textproc/py-lxml \
			textproc/py-yaml

.include <bsd.port.mk>
