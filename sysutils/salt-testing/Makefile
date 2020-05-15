# $OpenBSD: Makefile,v 1.27 2020/05/15 06:22:55 jasper Exp $

COMMENT =		common testing tools used in the Salt Stack projects

MODPY_EGG_VERSION =	2018.9.21
DISTNAME =		salt-testing-${MODPY_EGG_VERSION}
GH_ACCOUNT =		saltstack
GH_PROJECT =		salt-testing
GH_COMMIT =		70145afcc5eb96bf15b22631dcb364caf19b1fc1

CATEGORIES =		sysutils

HOMEPAGE =		https://saltstack.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			sysutils/salt

.include <bsd.port.mk>
