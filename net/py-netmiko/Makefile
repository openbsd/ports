# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:46 sthen Exp $

COMMENT =		simplify Paramiko connections to network devices

MODPY_EGG_VERSION =	2.3.3
DISTNAME=		netmiko-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-serial${MODPY_FLAVOR} \
			security/py-paramiko${MODPY_FLAVOR} \
			security/py-scp${MODPY_FLAVOR} \
			textproc/py-textfsm${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
