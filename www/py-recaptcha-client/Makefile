# $OpenBSD: Makefile,v 1.1.1.1 2012/07/17 19:29:13 landry Exp $

COMMENT =	plugin for reCAPTCHA and reCAPTCHA Mailhide

MODPY_EGG_VERSION = 1.0.6
DISTNAME =	recaptcha-client-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	www devel
HOMEPAGE =	http://pypi.python.org/pypi/recaptcha-client

# MIT-X11
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=r/recaptcha-client/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
