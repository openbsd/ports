# $OpenBSD: Makefile,v 1.6 2017/11/15 09:01:54 bentley Exp $

COMMENT =		readable Unicode font for laser printers

TYPEFACE =		charis
V =			5.000
DISTNAME =		CharisSIL-$V
CATEGORIES =		fonts
REVISION =		0

HOMEPAGE =		https://software.sil.org/charis/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/charis/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/charis

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
