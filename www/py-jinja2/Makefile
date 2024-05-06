COMMENT=	fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION=	3.1.4
DISTNAME=	jinja2-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www devel

HOMEPAGE=	https://jinja.palletsprojects.com

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
RUN_DEPENDS=	textproc/py-MarkupSafe${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

.include <bsd.port.mk>
