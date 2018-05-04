# $OpenBSD: Makefile,v 1.1.1.1 2018/05/04 05:31:15 rpointel Exp $

COMMENT =	rop gadget finder and binary information tool

MODPY_EGG_VERSION =	1.11.6
DISTNAME =	ropper-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://scoding.de/ropper/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-filebytes${MODPY_FLAVOR} \
		devel/capstone/python${MODPY_FLAVOR} \
		devel/keystone/python${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
