COMMENT=	Python library to easily handle data structure

MODPY_DISTV=	3.2.0
GH_ACCOUNT=	getting-things-gnome
GH_PROJECT=	liblarch
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-liblarch-${MODPY_DISTV}
REVISION=	3

CATEGORIES=	devel

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
# failures in test_liblarch.py: Trace/BPT trap
MODPY_PYTEST_ARGS= -v

RUN_DEPENDS=	devel/py-gobject3
TEST_DEPENDS=	devel/py-nose

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
