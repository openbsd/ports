COMMENT =	distribution-building parts of Flit

MODPY_EGG_VERSION =	3.7.1

DISTNAME =	flit_core-${MODPY_EGG_VERSION}
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

MODPY_PYTEST_ARGS =	flit_core/tests

post-patch:
	${SUBST_DATA} ${FILESDIR}/setup.py ${WRKSRC}/setup.py

post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/flit_core/tests

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
