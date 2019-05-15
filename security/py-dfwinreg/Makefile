# $OpenBSD: Makefile,v 1.5 2019/05/15 12:04:40 kmos Exp $

COMMENT =	Digital Forensics Windows Registry (dfWinReg)

MODPY_EGG_VERSION = 20180712
DISTNAME =	dfwinreg-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://github.com/log2timeline/dfwinreg/wiki

MASTER_SITES =	https://github.com/log2timeline/dfwinreg/releases/download/${MODPY_EGG_VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-construct \
			security/py-dfdatetime \
			devel/py-six \
			sysutils/libregf
TEST_DEPENDS =		devel/py-test \
			devel/py-mock

do-test:
	touch ${WRKSRC}/utils/__init__.py
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
