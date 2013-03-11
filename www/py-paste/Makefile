# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:48 espie Exp $

COMMENT =		tools for using web server gateway interface stack

MODPY_EGG_VERSION =	1.7.5.1
DISTNAME =		Paste-${MODPY_EGG_VERSION}
PKGNAME =		py-paste-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		http://pythonpaste.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=P/Paste/}

MODULES =		lang/python
RUN_DEPENDS =		www/py-flup
TEST_DEPENDS =	${RUN_DEPENDS} \
			${BASE_PKGPATH} \
			devel/py-py \
			devel/py-test

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-paste/

pre-test:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' \
		${WRKSRC}/tests/cgiapp_data/*.cgi

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test .

.include <bsd.port.mk>
