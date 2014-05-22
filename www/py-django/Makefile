# $OpenBSD: Makefile,v 1.31 2014/05/22 11:20:18 jasper Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.5.8
LNAME =			django
DISTNAME =		Django-${MODPY_EGG_VERSION}
PKGNAME =		py-${LNAME}-${MODPY_EGG_VERSION}
CATEGORIES =		www

HOMEPAGE =	https://www.djangoproject.com/

MAINTAINER =	Ryan Boggs <rmboggs@gmail.com>

# BSD License
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=D/Django/}

MODULES =	lang/python

SUBST_VARS +=	LNAME

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

do-test:
	cd ${WRKSRC} && env LC_CTYPE=en_US.UTF-8 PYTHONPATH=. \
		${MODPY_BIN} tests/runtests.py --settings=test_sqlite

.include <bsd.port.mk>
