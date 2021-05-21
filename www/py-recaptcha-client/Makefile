# $OpenBSD: Makefile,v 1.9 2021/05/21 19:50:38 kmos Exp $

COMMENT =	plugin for reCAPTCHA and reCAPTCHA Mailhide

MODPY_EGG_VERSION = 1.0.6
DISTNAME =	recaptcha-client-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	www devel

# MIT-X11
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
