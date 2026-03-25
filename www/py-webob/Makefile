COMMENT =	wsgi request and response object

MODPY_DISTV =	1.8.9
DISTNAME =	webob-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	www devel

HOMEPAGE =	https://webob.org/

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

DOCS =		differences.txt do-it-yourself.txt index.txt whatsnew-*.txt \
		reference.txt
EXAMPLES =	comment-example.txt file-example.txt jsonrpc-example.txt \
		wiki-example.txt

RUN_DEPENDS =	www/py-legacy-cgi
TEST_DEPENDS =	www/py-webtest

.include <bsd.port.mk>
