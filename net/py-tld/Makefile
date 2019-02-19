# $OpenBSD: Makefile,v 1.4 2019/02/19 09:20:23 rpointel Exp $

COMMENT =	extracts the top level domain (TLD) from the URL given

MODPY_EGG_VERSION =	0.9.2
DISTNAME =	tld-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	net

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# MPL 1.1/GPL 2.0/LGPL 2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
		${RUN_DEPENDS}

post-install:
	mv ${PREFIX}/bin/update-tld-names ${PREFIX}/bin/update-tld-names${MODPY_BIN_SUFFIX}

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/tld/tests/test_commands.py


.include <bsd.port.mk>
