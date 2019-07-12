# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:10 sthen Exp $

COMMENT =		Ethiopic Unicode script

TYPEFACE =		abyssinica
V =			1.500
DISTNAME =		AbyssinicaSIL-$V
CATEGORIES =		fonts
REVISION =		0

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
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
