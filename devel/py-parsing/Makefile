# $OpenBSD: Makefile,v 1.22 2013/03/11 10:50:26 espie Exp $

COMMENT =		Python parsing module

MODPY_EGG_VERSION =	1.5.7
DISTNAME =		pyparsing-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		http://pyparsing.wikispaces.com/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

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
