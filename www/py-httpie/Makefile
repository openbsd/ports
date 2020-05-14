# $OpenBSD: Makefile,v 1.17 2020/05/14 18:16:03 paco Exp $

COMMENT =	command-line HTTP client

MODPY_EGG_VERSION =	2.1.0
GH_TAGNAME =		${MODPY_EGG_VERSION}
GH_ACCOUNT =		jkbrzt
GH_PROJECT =		httpie
DISTNAME =		httpie-${MODPY_EGG_VERSION}

CATEGORIES =		www net

HOMEPAGE =		https://httpie.org
MAINTAINER =		Paco Esteban <paco@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST =		Yes

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-httpbin${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			www/py-httpie
PORTHOME =		${WRKSRC}

pre-test:
	# check for docutils presence then calls rst2pseudoxml.py
	# our docutils installs rst2pseudoxml
	rm ${WRKSRC}/tests/test_docs.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/httpie
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/httpie/

.include <bsd.port.mk>
