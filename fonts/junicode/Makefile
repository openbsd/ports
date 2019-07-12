# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:12 sthen Exp $

COMMENT =		advanced Unicode font for medievalists
DISTNAME =		junicode-1.002
EXTRACT_SUFX =		.zip
CATEGORIES =		fonts

HOMEPAGE =		http://junicode.sourceforge.net/
MAINTAINER =		George Rosamond <george@nycbug.org>

# OFL
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=junicode/}

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/junicode
DOCDIR =		${PREFIX}/share/doc/junicode

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/doc/*.pdf ${DOCDIR}

.include <bsd.port.mk>
