# $OpenBSD: Makefile,v 1.4 2018/10/24 11:14:30 sthen Exp $

PKG_ARCH =		*

COMMENT =		advanced Unicode font for medievalists
DISTNAME =		junicode-1.002
EXTRACT_SUFX =		.zip
CATEGORIES =		fonts

HOMEPAGE =		http://junicode.sourceforge.net/
MAINTAINER =		George Rosamond <george@nycbug.org>

# OFL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=junicode/}

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/junicode
DOCDIR =		${PREFIX}/share/doc/junicode

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/doc/* ${DOCDIR}

.include <bsd.port.mk>
