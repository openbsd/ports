# $OpenBSD: Makefile,v 1.44 2017/01/03 19:19:49 landry Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2016.10
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =		devel
REVISION =		0

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
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover pytz/tests

.include <bsd.port.mk>
