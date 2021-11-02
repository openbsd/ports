# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:17 sthen Exp $

COMMENT =	fast ASN.1 parser and serializer

MODPY_EGG_VERSION = 1.4.0
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	wbond
GH_PROJECT =	asn1crypto
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	security

HOMEPAGE =	https://github.com/wbond/asn1crypto

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_SETUPTOOLS =	Yes

# pypi tarball has no tests

.include <bsd.port.mk>
