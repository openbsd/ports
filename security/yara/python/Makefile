# $OpenBSD: Makefile,v 1.2 2016/09/14 20:40:53 rpointel Exp $

COMMENT = Python extension that gives access to YARA

GH_PROJECT = 	yara-python

PKGNAME = py-yara-${VERSION}

WANTLIB += pthread ${MODPY_WANTLIB} yara

MODULES = lang/python
MODPY_SETUPTOOLS = Yes

MODPY_DISTUTILS_BUILDARGS = --dynamic-linking
MAKE_FLAG +=	CPPFLAGS="-I${LOCALBASE}/include/yara/"

pre-configure:
	        ${SUBST_CMD} ${WRKSRC}/setup.py

BUILD_DEPENDS = security/yara/main
RUN_DEPENDS = 	security/yara/main

TEST_DEPENDS =	security/yara/python

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./tests.py

.include <bsd.port.mk>
