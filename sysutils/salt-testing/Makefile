# $OpenBSD: Makefile,v 1.31 2021/11/02 00:02:34 sthen Exp $

COMMENT =		common testing tools used in the Salt Stack projects

MODPY_EGG_VERSION =	2018.9.21
DISTNAME =		salt-testing-${MODPY_EGG_VERSION}
GH_ACCOUNT =		saltstack
GH_PROJECT =		salt-testing
GH_COMMIT =		70145afcc5eb96bf15b22631dcb364caf19b1fc1
REVISION =		2

CATEGORIES =		sysutils

HOMEPAGE =		https://saltstack.org/

MAINTAINER =		Robert Nagy <robert@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			sysutils/salt

.include <bsd.port.mk>
