# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:47 sthen Exp $

COMMENT =	parse, read and write Microsoft OLE2 files

MODPY_EGG_VERSION = 0.46
DISTNAME =	olefile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

GH_ACCOUNT =	decalage2
GH_PROJECT =	olefile
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://www.decalage.info/olefile

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD-like
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

NO_TEST = 	Yes

.include <bsd.port.mk>
