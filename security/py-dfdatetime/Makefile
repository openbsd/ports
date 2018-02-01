# $OpenBSD: Makefile,v 1.5 2018/02/01 13:22:27 rpointel Exp $

COMMENT =	Digital Forensics date and time

MODPY_EGG_VERSION = 20180110
DISTNAME =	py-dfdatetime-${MODPY_EGG_VERSION}

GH_ACCOUNT =	log2timeline
GH_PROJECT =	dfdatetime
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	security devel

HOMEPAGE =	https://github.com/log2timeline/dfdatetime/wiki

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS +=	devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
