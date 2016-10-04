# $OpenBSD: Makefile,v 1.42 2016/10/04 12:56:17 shadchin Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2016.7
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =		devel

HOMEPAGE =		http://pytz.sourceforge.net/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC}/pytz/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKSRC} \
		${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
