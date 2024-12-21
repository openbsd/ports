COMMENT=	Sender-Policy-Framework queries in Python

MODPY_DISTV=	2.0.14
DISTNAME=	pyspf-${MODPY_DISTV}
PKGNAME=	py-spf-${MODPY_DISTV}
CATEGORIES=	mail
REVISION=	1

HOMEPAGE=	https://github.com/sdgathman/pyspf/

# Python
PERMIT_PACKAGE=	Yes

MODULES=        lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test/testspf.py

RUN_DEPENDS=	mail/py-authres \
		net/py-dnspython

TEST_DEPENDS=	textproc/py-yaml

do-test:
	cd ${WRKSRC}/test && PYTHONPATH=.. ${MODPY_BIN} testspf.py

.include <bsd.port.mk>
