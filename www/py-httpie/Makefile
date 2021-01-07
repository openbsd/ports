# $OpenBSD: Makefile,v 1.20 2021/01/07 08:33:13 paco Exp $

COMMENT =	command-line HTTP client

MODPY_EGG_VERSION =	2.3.0
GH_TAGNAME =		${MODPY_EGG_VERSION}
GH_ACCOUNT =		jakubroztocil
GH_PROJECT =		httpie

CATEGORIES =		www net

HOMEPAGE =		https://httpie.org

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
# requires network access
MODPY_PYTEST =		Yes

RUN_DEPENDS =		net/py-socks${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-requests-toolbelt${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-httpbin${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}
PORTHOME =		${WRKSRC}

pre-test:
	# check for docutils presence then calls rst2pseudoxml.py
	# our docutils installs rst2pseudoxml
	rm -f ${WRKSRC}/tests/test_docs.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/httpie
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/httpie/

.include <bsd.port.mk>
