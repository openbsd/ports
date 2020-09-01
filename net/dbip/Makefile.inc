# $OpenBSD: Makefile.inc,v 1.7 2020/09/01 07:25:02 fcambus Exp $

V =		2020-09

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
