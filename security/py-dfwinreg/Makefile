# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:06 sthen Exp $

COMMENT =	Digital Forensics Windows Registry (dfWinReg)

MODPY_EGG_VERSION = 20200121
DISTNAME =	dfwinreg-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://github.com/log2timeline/dfwinreg/wiki

MASTER_SITES =	https://github.com/log2timeline/dfwinreg/releases/download/${MODPY_EGG_VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-construct${MODPY_FLAVOR} \
			devel/py-dtfabric${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			security/py-dfdatetime${MODPY_FLAVOR} \
			sysutils/libregf
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

do-test:
	touch ${WRKSRC}/utils/__init__.py
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
