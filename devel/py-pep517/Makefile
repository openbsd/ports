COMMENT =	wrappers to build Python packages using PEP 517 hooks

MODPY_EGG_VERSION =	0.12.0

DISTNAME =	pep517-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# https://github.com/pypa/pep517
HOMEPAGE =	https://pep517.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVOR =	python3
FLAVORS =	python3

RUN_DEPENDS =	textproc/py-tomli${MODPY_FLAVOR}

MODPY_PYTEST =	Yes
TEST_DEPENDS =	devel/py-pip${MODPY_FLAVOR}
PORTHOME =	${WRKDIR}

.include <bsd.port.mk>

setuppy: ${_EXTRACT_COOKIE}
	cd ${WRKSRC}; ${_PBUILD} flit build --setup-py
	${_PBUILD} tar xzf ${WRKSRC}/dist/${DISTNAME}.tar.gz -C ${WRKSRC} ${DISTNAME}/setup.py
	${_PBUILD} sed -i 's/${MODPY_EGG_VERSION}/\$${MODPY_EGG_VERSION}/' \
	    ${WRKSRC}/${DISTNAME}/setup.py; \
	if ! diff -u ${FILESDIR}/setup.py ${WRKSRC}/${DISTNAME}/setup.py; then \
	    cp ${FILESDIR}/setup.py ${FILESDIR}/setup.py.orig; \
	    cp ${WRKSRC}/${DISTNAME}/setup.py ${FILESDIR}/setup.py; \
	fi
