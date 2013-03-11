# $OpenBSD: Makefile,v 1.17 2013/03/11 11:44:48 espie Exp $

COMMENT =		HTML form validation, generation, and conversion

MODPY_EGG_VERSION =	1.2.4
DISTNAME =		FormEncode-${MODPY_EGG_VERSION}
PKGNAME =		py-formencode-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		http://www.formencode.org/

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# PSF
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=F/FormEncode/}

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
