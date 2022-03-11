# remove when switching to Python 3.9
COMMENT=		backport of the importlib.resources module

MODPY_EGG_VERSION=	5.1.2
DISTNAME=		importlib_resources-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

MAINTAINER=		Dimitri Karamazov <deserter666@danwin1210.me>

# APACHE 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		devel/py-setuptools_scm${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR=			python3

# tests are broken
NO_TEST=		Yes

.include <bsd.port.mk>
