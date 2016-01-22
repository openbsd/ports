# $OpenBSD: Makefile,v 1.6 2016/01/22 08:41:35 landry Exp $

COMMENT =	command-line HTTP client

MODPY_EGG_VERSION =	0.9.3
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	jkbrzt
GH_PROJECT =	httpie
DISTNAME =	httpie-${MODPY_EGG_VERSION}
PKGNAME =	py-httpie-${MODPY_EGG_VERSION}

CATEGORIES =	www net

HOMEPAGE =	http://httpie.org

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =	www/py-requests \
		textproc/py-pygments
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-test \
		devel/py-test-httpbin \
		devel/py-mock
PORTHOME =	${WRKSRC}

pre-test:
	# check for docutils presence then calls rst2pseudoxml.py
	# our docutils installs rst2pseudoxml
	rm ${WRKSRC}/tests/test_docs.py

.include <bsd.port.mk>
