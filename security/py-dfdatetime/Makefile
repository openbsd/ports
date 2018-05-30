# $OpenBSD: Makefile,v 1.8 2018/05/30 09:10:19 rpointel Exp $

COMMENT =	Digital Forensics date and time

MODPY_EGG_VERSION = 20180510
DISTNAME =	dfdatetime-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security devel

HOMEPAGE =	https://github.com/log2timeline/dfdatetime/wiki

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

MASTER_SITES =	https://github.com/log2timeline/dfdatetime/releases/download/${MODPY_EGG_VERSION}/

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS +=	devel/py-mock${MODPY_FLAVOR}

# make it possible to install both (un)FLAVORed packages alongside
post-install:
	rm -rf ${PREFIX}/share/doc/dfdatetime/

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
