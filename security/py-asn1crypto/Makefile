# $OpenBSD: Makefile,v 1.1.1.1 2017/11/05 17:44:18 sthen Exp $

COMMENT =	fast ASN.1 parser and serializer

MODPY_EGG_VERSION = 0.23.0
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	wbond
GH_PROJECT =	asn1crypto
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://github.com/wbond/asn1crypto

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

# pypi tarball has no tests

.include <bsd.port.mk>
