COMMENT=	command-line HTTP client

# intentionally no py- prefix (port directory name is wrong)
MODPY_DISTV=	3.2.4
GH_TAGNAME=	${MODPY_DISTV}
GH_ACCOUNT=	httpie
GH_PROJECT=	httpie
WRKDIST=	${WRKDIR}/cli-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	www net

HOMEPAGE=	https://httpie.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

# tests require network access
# ignore tests using devel/py-test-lazy-fixture
# which is broken with newer pytest
MODPY_PYTEST_ARGS= --ignore tests/test_cookie_on_redirects.py \
		--ignore tests/test_sessions.py \
		--ignore tests/test_update_warnings.py

RUN_DEPENDS=	net/py-socks \
		textproc/py-charset-normalizer \
		textproc/py-defusedxml \
		textproc/py-pygments \
		www/py-multidict \
		www/py-requests \
		www/py-requests-toolbelt
TEST_DEPENDS=	devel/py-test-httpbin \
		devel/py-test-mock \
		devel/py-mock \
		devel/py-rich \
		www/py-responses
PORTHOME=	${WRKSRC}

pre-test:
	# check for docutils presence then calls rst2pseudoxml.py
	# our docutils installs rst2pseudoxml
	rm -f ${WRKSRC}/tests/test_docs.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/httpie
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/httpie/

.include <bsd.port.mk>
