# $OpenBSD: Makefile,v 1.13 2016/09/02 10:10:52 landry Exp $

COMMENT =		helper to test wsgi applications

MODPY_EGG_VERSION =	2.0.18
DISTNAME =		WebTest-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
EXTRACT_SUFX=		.zip
REVISION =		1

CATEGORIES =		www devel

HOMEPAGE =		http://webtest.pythonpaste.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six \
			www/py-waitress \
			www/py-beautifulsoup4 \
			www/py-webob

# also needs WSGIProxy2
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-coverage \
			devel/py-dtopt \
			devel/py-mock \
			devel/py-nose

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
