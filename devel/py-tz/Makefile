# $OpenBSD: Makefile,v 1.45 2017/04/22 20:37:39 shadchin Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2017.2
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =		devel

HOMEPAGE =		http://pytz.sourceforge.net/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover pytz/tests

.include <bsd.port.mk>
