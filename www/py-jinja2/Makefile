COMMENT=	fast, optionally sandboxed, Python template engine

MODPY_DISTV=	3.1.6
REVISION=	0
DISTNAME=	jinja2-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www devel

# https://jinja.palletsprojects.com/en/stable/changes/
# https://github.com/pallets/jinja
HOMEPAGE=	https://jinja.palletsprojects.com

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-MarkupSafe
TEST_DEPENDS=	devel/py-trio

.include <bsd.port.mk>
