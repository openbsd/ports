COMMENT=	backport of pathlib-compatible object wrapper for zip files

MODPY_DISTV=	3.23.0
DISTNAME=	zipp-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/zipp

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

BUILD_DEPENDS=	misc/py-coherent.licensed

# disable tests needing jaraco.itertools (not ported)
MODPY_PYTEST_ARGS= --ignore tests/test_path.py \
		--ignore tests/write-alpharep.py
TEST_DEPENDS=	devel/py-jaraco-functools \
		devel/py-more-itertools

.include <bsd.port.mk>
