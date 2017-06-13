# $OpenBSD: Makefile,v 1.2 2017/06/13 18:42:52 feinerer Exp $

COMMENT =	parse, read and write Microsoft OLE2 files

MODPY_EGG_VERSION = 0.44
DISTNAME =	olefile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://www.decalage.info/python/olefileio

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/decalage2/olefile/releases/download/v${MODPY_EGG_VERSION}/

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

NO_TEST = 	Yes

.include <bsd.port.mk>
