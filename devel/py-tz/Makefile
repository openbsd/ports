# $OpenBSD: Makefile,v 1.39 2016/04/11 09:09:16 shadchin Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2016.3
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =		devel

HOMEPAGE =		http://pytz.sourceforge.net/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC}/pytz/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKSRC} \
		${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
