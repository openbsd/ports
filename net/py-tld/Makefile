# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:03 sthen Exp $

COMMENT =	extracts the top level domain (TLD) from the URL given

MODPY_EGG_VERSION =	0.9.3
DISTNAME =	tld-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	net

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# MPL 1.1/GPL 2.0/LGPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

post-install:
	mv ${PREFIX}/bin/update-tld-names ${PREFIX}/bin/update-tld-names${MODPY_BIN_SUFFIX}

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/tld/tests/test_commands.py

.include <bsd.port.mk>
