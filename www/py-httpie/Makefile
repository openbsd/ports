COMMENT=	command-line HTTP client

# intentionally no py- prefix
MODPY_EGG_VERSION=	3.2.3
GH_TAGNAME=	${MODPY_EGG_VERSION}
GH_ACCOUNT=	httpie
GH_PROJECT=	httpie
WRKDIST=	${WRKDIR}/cli-${MODPY_EGG_VERSION}

CATEGORIES=	www net

HOMEPAGE=	https://httpie.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

# tests require network access
# ignore tests using devel/py-test-lazy-fixture${MODPY_FLAVOR}
# which is broken with newer pytest
MODPY_PYTEST_ARGS= --ignore tests/test_cookie_on_redirects.py \
		--ignore tests/test_sessions.py \
		--ignore tests/test_update_warnings.py

RUN_DEPENDS=	net/py-socks${MODPY_FLAVOR} \
		textproc/py-charset-normalizer${MODPY_FLAVOR} \
		textproc/py-defusedxml${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR} \
		www/py-multidict${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-toolbelt${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-httpbin${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-rich${MODPY_FLAVOR} \
		www/py-responses${MODPY_FLAVOR}
PORTHOME=	${WRKSRC}

pre-test:
	# check for docutils presence then calls rst2pseudoxml.py
	# our docutils installs rst2pseudoxml
	rm -f ${WRKSRC}/tests/test_docs.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/httpie
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/httpie/

.include <bsd.port.mk>
