COMMENT=		SARIF command line tools and a Python library

MODPY_DISTV=	2.0.0
DISTNAME=		sarif_tools-${MODPY_DISTV}
PKGNAME=		py-sarif-tools-${MODPY_DISTV}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/microsoft/sarif-tools

# MIT
PERMIT_PACKAGE=		yes

NO_TEST=		yes

MODULES=		lang/python
MODPY_PYBUILD=		poetry-core
MODPY_PI=		Yes

RUN_DEPENDS=		devel/py-jsonpath-ng \
			graphics/py-matplotlib \
			textproc/py-docx \
			textproc/py-yaml \
			www/py-jinja2

.include <bsd.port.mk>
