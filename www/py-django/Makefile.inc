# $OpenBSD: Makefile.inc,v 1.1 2015/07/27 20:01:01 rpointel Exp $

DISTNAME =		Django-${MODPY_EGG_VERSION}
PKGNAME =		py-${LNAME}-${MODPY_EGG_VERSION}
CATEGORIES =		www

HOMEPAGE =	https://www.djangoproject.com/

MAINTAINER =	Ryan Boggs <rmboggs@gmail.com>

# BSD License
PERMIT_PACKAGE_CDROM =		Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

SUBST_VARS +=	LNAME

do-test:
	cd ${WRKSRC} && env LC_CTYPE=en_US.UTF-8 PYTHONPATH=. \
		${MODPY_BIN} tests/runtests.py --settings=test_sqlite
