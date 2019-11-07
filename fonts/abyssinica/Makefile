# $OpenBSD: Makefile,v 1.9 2019/11/07 11:04:44 sthen Exp $

COMMENT =		Ethiopic Unicode script

TYPEFACE =		abyssinica
V =			2.000
DISTNAME =		AbyssinicaSIL-$V
CATEGORIES =		fonts

HOMEPAGE =		https://software.sil.org/abyssinica/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MODULES =		font

MASTER_SITES =		https://software.sil.org/downloads/r/abyssinica/

NO_BUILD =		Yes
NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/abyssinica

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/{README.txt,OFL.txt} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/web/AbyssinicaSIL-Regular.woff ${FONTDIR}

.include <bsd.port.mk>
