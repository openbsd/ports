# $OpenBSD: Makefile,v 1.32 2016/06/28 17:03:09 shadchin Exp $

COMMENT =		Python parsing module

MODPY_EGG_VERSION =	2.1.5
DISTNAME =		pyparsing-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		http://pyparsing.wikispaces.com/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyparsing/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

DOCSDIR =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}parsing
EXAMPLESDIR =		${PREFIX}/share/examples/${MODPY_PY_PREFIX}parsing

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/HowToUsePyparsing.html ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}

.include <bsd.port.mk>
