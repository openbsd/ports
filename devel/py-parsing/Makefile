# $OpenBSD: Makefile,v 1.23 2013/11/01 17:19:05 benoit Exp $

COMMENT =		Python parsing module

MODPY_EGG_VERSION =	1.5.7
DISTNAME =		pyparsing-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		http://pyparsing.wikispaces.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pyparsing/}

MODULES =	lang/python

NO_TEST =	Yes

DOCSDIR =	${PREFIX}/share/doc/py-parsing
EXAMPLESDIR =	${PREFIX}/share/examples/py-parsing

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/HowToUsePyparsing.html ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}

.include <bsd.port.mk>
