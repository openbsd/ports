# $OpenBSD: Makefile,v 1.4 2015/09/29 10:52:54 sthen Exp $

COMMENT =	command-line HTTP client

MODPY_EGG_VERSION =	0.9.2
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	jakubroztocil
GH_PROJECT =	httpie
DISTNAME =	httpie-${MODPY_EGG_VERSION}
PKGNAME =	py-httpie-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	www net

HOMEPAGE =	http://httpie.org

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =	www/py-requests \
		textproc/py-pygments
TEST_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
