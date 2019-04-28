# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:35 sthen Exp $

COMMENT =	parse, read and write Microsoft OLE2 files

MODPY_EGG_VERSION = 0.46
DISTNAME =	olefile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

GH_ACCOUNT =	decalage2
GH_PROJECT =	olefile
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://www.decalage.info/olefile

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

NO_TEST = 	Yes

.include <bsd.port.mk>
