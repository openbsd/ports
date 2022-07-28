COMMENT =	lil' TOML writer

MODPY_EGG_VERSION =	1.0.0

DISTNAME =	tomli_w-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/hukkin/tomli-w

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVOR =	python3
FLAVORS =	python3

NO_TEST =	Yes

post-patch:
	${SUBST_DATA} ${FILESDIR}/setup.py ${WRKSRC}/setup.py

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
