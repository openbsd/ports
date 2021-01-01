# $OpenBSD: Makefile.inc,v 1.11 2021/01/01 14:49:47 fcambus Exp $

V =		2021-01

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

HOMEPAGE =	https://db-ip.com/db/lite.php

# CC BY 4.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://download.db-ip.com/free/
EXTRACT_SUFX =	.gz

WRKDIST =	${WRKDIR}

NO_BUILD =	Yes

NO_TEST =	Yes

PREFIX =	${LOCALSTATEDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/db/dbip
	${INSTALL_DATA} ${WRKDIST}/*.mmdb ${PREFIX}/db/dbip
