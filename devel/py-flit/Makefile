COMMENT =	simple packaging tool for simple packages

MODPY_EGG_VERSION =	3.7.1

DISTNAME =	flit-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# https://github.com/pypa/flit
HOMEPAGE =	https://flit.pypa.io/

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVOR =	python3
FLAVORS =	python3

RUN_DEPENDS =	devel/py-flit_core${MODPY_FLAVOR} \
		textproc/py-docutils${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR} \
		textproc/py-tomli_w${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

MODPY_PYTEST =	Yes
TEST_DEPENDS =	devel/py-testpath${MODPY_FLAVOR} \
		www/py-responses${MODPY_FLAVOR}

post-patch:
	${SUBST_DATA} ${FILESDIR}/setup.py ${WRKSRC}/setup.py

pre-test:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/flit ${PREFIX}/bin/flit

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
