# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:11 sthen Exp $

COMMENT =		readable Unicode font for laser printers

TYPEFACE =		charis
V =			5.000
DISTNAME =		CharisSIL-$V
CATEGORIES =		fonts
REVISION =		0

HOMEPAGE =		https://software.sil.org/charis/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/charis/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/charis

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
