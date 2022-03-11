COMMENT=		documentation tool micro-framework

MODPY_EGG_VERSION=	0.13.7
DISTNAME=		hotdoc-${MODPY_EGG_VERSION}
#PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		textproc

HOMEPAGE=		https://hotdoc.github.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0 pthread
WANTLIB += xml2

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		devel/cmake

LIB_DEPENDS=		devel/json-glib \
			textproc/libxml

RUN_DEPENDS=		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-dbus-deviation${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-pkgconfig${MODPY_FLAVOR} \
			devel/py-schema${MODPY_FLAVOR} \
			devel/py-toposort${MODPY_FLAVOR} \
			devel/py-wheezy.template${MODPY_FLAVOR} \
			math/py-networkx${MODPY_FLAVOR}>=2.6.2 \
			textproc/py-cchardet${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
