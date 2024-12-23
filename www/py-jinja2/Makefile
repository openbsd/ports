COMMENT=	fast, optionally sandboxed, Python template engine

MODPY_DISTV=	3.1.5
DISTNAME=	jinja2-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www devel

HOMEPAGE=	https://jinja.palletsprojects.com

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
RUN_DEPENDS=	textproc/py-MarkupSafe
TEST_DEPENDS=	devel/py-trio

MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

.include <bsd.port.mk>
