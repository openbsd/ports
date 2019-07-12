# $OpenBSD: Makefile,v 1.24 2019/07/12 20:51:01 sthen Exp $

COMMENT =		HTML form validation, generation, and conversion

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		FormEncode-${MODPY_EGG_VERSION}
PKGNAME =		py-formencode-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		http://www.formencode.org/

# PSF
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-country${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}formencode
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}formencode/

.include <bsd.port.mk>
