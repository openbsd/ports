# $OpenBSD: Makefile,v 1.3 2015/09/20 10:31:19 benoit Exp $

COMMENT =	command-line HTTP client

MODPY_EGG_VERSION =	0.9.2
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	jakubroztocil
GH_PROJECT =	httpie
DISTNAME =	httpie-${MODPY_EGG_VERSION}
PKGNAME =	py-httpie-${MODPY_EGG_VERSION}

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
