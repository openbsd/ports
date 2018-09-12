# $OpenBSD: Makefile,v 1.2 2018/09/12 16:22:35 danj Exp $

COMMENT =		Python library for "Tom's Obvious Minimal Language" #'

MODPY_EGG_VERSION =	0.9.6
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
