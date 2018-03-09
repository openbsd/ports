# $OpenBSD: Makefile,v 1.5 2018/03/09 12:40:14 sthen Exp $

COMMENT =		type hints for python

MODPY_EGG_VERSION =	3.6.2
REVISION =		0
DISTNAME =		typing-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# PSF
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# python3 tests require py-flake8-* ports
.if ! ${FLAVOR:Mpython3}
do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover python2
.endif

.include <bsd.port.mk>
