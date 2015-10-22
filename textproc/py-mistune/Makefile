# $OpenBSD: Makefile,v 1.1.1.1 2015/10/22 19:49:09 edd Exp $

COMMENT =		markdown parser for Python

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		mistune-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/lepture/mistune

TEST_DEPENDS +=		devel/py-nose

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
