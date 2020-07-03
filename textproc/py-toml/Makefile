# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:16 sthen Exp $

COMMENT =		Python library for "Tom's Obvious Minimal Language" #'

MODPY_EGG_VERSION =	0.10.0
DISTNAME =		toml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		1


# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes


FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
