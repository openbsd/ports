# $OpenBSD: Makefile,v 1.1.1.1 2020/12/06 11:51:25 pvk Exp $

COMMENT =		ssh configuration security auditing tool

MODPY_EGG_VERSION =	2.3.1

DISTNAME =		ssh-audit-${MODPY_EGG_VERSION}

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
