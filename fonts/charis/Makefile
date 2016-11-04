# $OpenBSD: Makefile,v 1.4 2016/11/04 15:53:59 rpe Exp $

COMMENT =		readable Unicode font for laser printers

TYPEFACE =		charis
V =			5.000
DISTNAME =		CharisSIL-$V
CATEGORIES =		fonts

HOMEPAGE =		http://software.sil.org/charis/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software.sil.org/downloads/charis/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/charis

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
