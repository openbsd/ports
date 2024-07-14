COMMENT=		SARIF command line tools and a Python library

MODPY_EGG_VERSION=	2.0.0
DISTNAME=		sarif_tools-${MODPY_EGG_VERSION}
PKGNAME=		py-sarif-tools-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/microsoft/sarif-tools

# MIT
PERMIT_PACKAGE=		yes

NO_TEST=		yes

MODULES=		lang/python
			
MODPY_PYBUILD=		poetry-core
MODPY_PI=		Yes

SUBST_VARS+=		MODPY_FLAVOR

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-jsonpath-ng${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			textproc/py-docx${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

.include <bsd.port.mk>
