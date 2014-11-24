# $OpenBSD: Makefile,v 1.4 2014/11/24 10:16:13 benoit Exp $

COMMENT =		ELF and DWARF parser library for Python

MODPY_EGG_VERSION =	0.23
DISTNAME =		pyelftools-${MODPY_EGG_VERSION}
PKGNAME =		py-elftools-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/eliben/pyelftools
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pyelftools/}
MODULES =		lang/python

EXAMPLEDIR =	${PREFIX}/share/examples/py-elftools
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cd ${WRKSRC}/examples &&  \
	for i in *.py; do \
		echo ${EXAMPLEDIR}; \
		echo ${WRKSRC}/examples/$$i; \
		${INSTALL_SCRIPT} $$i ${EXAMPLEDIR}; \
	done

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test/run_all_unittests.py

.include <bsd.port.mk>
