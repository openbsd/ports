# $OpenBSD: Makefile,v 1.12 2021/10/29 15:38:49 sthen Exp $

COMMENT =	extracts the top level domain (TLD) from the URL given

MODPY_EGG_VERSION =	0.9.3
DISTNAME =	tld-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	net

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# MPL 1.1/GPL 2.0/LGPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/tld/tests/test_commands.py

.include <bsd.port.mk>
