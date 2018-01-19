# $OpenBSD: Makefile,v 1.3 2018/01/19 21:45:21 jung Exp $

COMMENT =		type hints for python

MODPY_EGG_VERSION =	3.6.2
DISTNAME =		typing-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# PSF
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover python2

.include <bsd.port.mk>
