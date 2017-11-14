# $OpenBSD: Makefile,v 1.2 2017/11/14 06:52:19 rpointel Exp $

COMMENT =	Digital Forensics Windows Registry (dfWinReg)

MODPY_EGG_VERSION = 20170706
DISTNAME =	py-dfwinreg-${MODPY_EGG_VERSION}

GH_ACCOUNT =	log2timeline
GH_PROJECT =	dfwinreg
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	https://github.com/log2timeline/dfwinreg/wiki

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
			devel/py-mock \
			${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
