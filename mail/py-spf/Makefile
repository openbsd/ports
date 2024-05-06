COMMENT=	Sender-Policy-Framework queries in Python

MODPY_EGG_VERSION= 2.0.14
DISTNAME=	pyspf-${MODPY_EGG_VERSION}
PKGNAME=	py-spf-${MODPY_EGG_VERSION}
CATEGORIES=	mail
REVISION=	0

HOMEPAGE=	https://github.com/sdgathman/pyspf/

# Python
PERMIT_PACKAGE=	Yes

MODULES=        lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test/testspf.py

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	mail/py-authres${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR}

TEST_DEPENDS=	textproc/py-yaml${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC}/test && PYTHONPATH=.. ${MODPY_BIN} testspf.py

.include <bsd.port.mk>
