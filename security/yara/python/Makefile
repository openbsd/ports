# $OpenBSD: Makefile,v 1.1.1.1 2015/09/18 21:35:32 rpointel Exp $

COMMENT = Python extension that gives access to YARA

PKGNAME = py-${DISTNAME}

WANTLIB += pthread ${MODPY_WANTLIB} yara

WRKSRC = ${WRKDIR}/${DISTNAME}/yara-python

MODULES = lang/python

BUILD_DEPENDS = security/yara/main
RUN_DEPENDS = 	security/yara/main

TEST_DEPENDS =	security/yara/python

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./tests.py

.include <bsd.port.mk>
