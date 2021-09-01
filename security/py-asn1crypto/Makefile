# $OpenBSD: Makefile,v 1.7 2021/09/01 15:04:20 ajacoutot Exp $

COMMENT =	fast ASN.1 parser and serializer

MODPY_EGG_VERSION = 1.4.0
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	wbond
GH_PROJECT =	asn1crypto
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://github.com/wbond/asn1crypto

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

# pypi tarball has no tests

.include <bsd.port.mk>
