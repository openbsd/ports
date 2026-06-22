COMMENT=	small library to dynamically create Python functions

MODPY_DISTV=	1.16.0
DISTNAME=	makefun-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/smarie/python-makefun

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

# some tests complain about not having a suitable plugin for the async
# framework, but installing those plugins doesn't seem to help.
# most tests work.
TEST_DEPENDS=	devel/py-test-asyncio

.include <bsd.port.mk>
