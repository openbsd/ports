# $OpenBSD: Makefile,v 1.18 2019/07/12 20:51:02 sthen Exp $

COMMENT =		tools for using web server gateway interface stack

MODPY_EGG_VERSION =	1.7.5.1
DISTNAME =		Paste-${MODPY_EGG_VERSION}
PKGNAME =		py-paste-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		http://pythonpaste.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
RUN_DEPENDS =		www/py-flup
TEST_DEPENDS =		${BASE_PKGPATH} \
			devel/py-py \
			devel/py-test

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-paste/
	chmod a+r ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/paste/evalexception/media/MochiKit.packed.js


pre-test:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' \
		${WRKSRC}/tests/cgiapp_data/*.cgi

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test .

.include <bsd.port.mk>
