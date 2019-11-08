# $OpenBSD: Makefile,v 1.7 2019/11/08 09:02:55 kmos Exp $

COMMENT =	Digital Forensics Windows Registry (dfWinReg)

MODPY_EGG_VERSION = 20180712
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
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-construct \
			devel/py-dtfabric \
			devel/py-six \
			security/py-dfdatetime \
			sysutils/libregf
TEST_DEPENDS =		devel/py-test \
			devel/py-mock

do-test:
	touch ${WRKSRC}/utils/__init__.py
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
