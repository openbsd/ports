# $OpenBSD: Makefile,v 1.18 2015/04/02 14:21:18 jasper Exp $

COMMENT =		HTML form validation, generation, and conversion

MODPY_EGG_VERSION =	1.2.4
DISTNAME =		FormEncode-${MODPY_EGG_VERSION}
PKGNAME =		py-formencode-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		http://www.formencode.org/

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# PSF
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		devel/gettext \
			lang/python

TEST_DEPENDS =	databases/py-sqlobject \
			devel/py-nose

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-formencode
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-formencode/

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests tests

.include <bsd.port.mk>
