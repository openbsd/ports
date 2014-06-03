# $OpenBSD: Makefile,v 1.29 2014/06/03 11:34:24 rpointel Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2014.2
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =		devel

REVISION = 0

HOMEPAGE =		http://pytz.sourceforge.net/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pytz/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

do-test: fake
	cd ${WRKSRC}/pytz/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_tzinfo.py

.include <bsd.port.mk>
