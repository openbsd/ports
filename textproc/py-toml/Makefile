# $OpenBSD: Makefile,v 1.3 2018/11/10 16:51:23 danj Exp $

COMMENT =		Python library for "Tom's Obvious Minimal Language" #'

MODPY_EGG_VERSION =	0.10.0
DISTNAME =		toml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc


# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes


FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
