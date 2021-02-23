# $OpenBSD: Makefile,v 1.8 2021/02/23 19:39:48 sthen Exp $

COMMENT =	plugin for reCAPTCHA and reCAPTCHA Mailhide

MODPY_EGG_VERSION = 1.0.6
DISTNAME =	recaptcha-client-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	www devel

# MIT-X11
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
