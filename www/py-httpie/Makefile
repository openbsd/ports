# $OpenBSD: Makefile,v 1.15 2019/09/04 09:51:23 sthen Exp $

COMMENT =	command-line HTTP client

MODPY_EGG_VERSION =	1.0.3
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	jkbrzt
GH_PROJECT =	httpie
DISTNAME =	httpie-${MODPY_EGG_VERSION}

CATEGORIES =	www net

HOMEPAGE =	https://httpie.org
MAINTAINER =	Paco Esteban <paco@onna.be>

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =	www/py-requests${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR}
TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR} \
		devel/py-test-httpbin${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}
PORTHOME =	${WRKSRC}

pre-test:
	# check for docutils presence then calls rst2pseudoxml.py
	# our docutils installs rst2pseudoxml
	rm ${WRKSRC}/tests/test_docs.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/httpie
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/httpie/

.include <bsd.port.mk>
