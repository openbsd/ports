# $OpenBSD: Makefile,v 1.13 2020/07/03 21:13:02 sthen Exp $

COMMENT =		simplify Paramiko connections to network devices

MODPY_EGG_VERSION =	3.1.1
DISTNAME=		netmiko-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-serial${MODPY_FLAVOR} \
			security/py-paramiko${MODPY_FLAVOR} \
			security/py-scp${MODPY_FLAVOR} \
			textproc/py-textfsm${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
