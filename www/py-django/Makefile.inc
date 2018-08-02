# $OpenBSD: Makefile.inc,v 1.3 2018/08/02 09:15:17 rpointel Exp $

DISTNAME =		Django-${MODPY_EGG_VERSION}
PKGNAME =		py-${LNAME}-${MODPY_EGG_VERSION}
CATEGORIES =		www

HOMEPAGE =	https://www.djangoproject.com/

# BSD License
PERMIT_PACKAGE_CDROM =		Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

SUBST_VARS +=	LNAME

TEST_DEPENDS +=	devel/py-tz,python3

do-test:
	cd ${WRKSRC} && env LC_CTYPE=en_US.UTF-8 PYTHONPATH=. \
		${MODPY_BIN} tests/runtests.py --settings=test_sqlite
