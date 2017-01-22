# $OpenBSD: Makefile,v 1.1.1.1 2017/01/22 08:09:58 rpointel Exp $

COMMENT =	Digital Forensics date and time

MODPY_EGG_VERSION = 20170103
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

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
