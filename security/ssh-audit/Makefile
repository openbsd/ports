# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:20 sthen Exp $

COMMENT =		ssh configuration security auditing tool

MODPY_EGG_VERSION =	2.5.0

DISTNAME =		ssh-audit-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://github.com/jtesta/ssh-audit/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
FLAVORS =		python3
FLAVOR =		python3

NO_TEST =		Yes

.include <bsd.port.mk>
