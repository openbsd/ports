# $OpenBSD: Makefile,v 1.2 2017/03/05 18:16:50 shadchin Exp $

COMMENT =		type hints for python

MODPY_EGG_VERSION =	3.5.3.0
DISTNAME =		typing-${MODPY_EGG_VERSION}
PKGNAME =		py-typing-${MODPY_EGG_VERSION}

CATEGORIES =		devel

# PSF
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover python2

.include <bsd.port.mk>
