# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:12 sthen Exp $

COMMENT =		tarsnap wrapper which automatically expires backups

MODPY_EGG_VERSION =	0.4.0
DISTNAME =		tarsnapper-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			sysutils/tarsnap
TEST_DEPENDS =	 	devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
