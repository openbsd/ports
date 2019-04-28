# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:57 sthen Exp $

COMMENT =		Python library for "Tom's Obvious Minimal Language" #'

MODPY_EGG_VERSION =	0.10.0
DISTNAME =		toml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		0


# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes


FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
