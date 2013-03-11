# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:01 espie Exp $

COMMENT =	simple 6502 assembler

DISTNAME =	asm6-1.6
EXTRACT_SUFX =	.zip

CATEGORIES =	devel

HOMEPAGE =	https://home.comcast.net/~olimar/NES/

# "This is free software.  You may use, modify, and / or redistribute any part
# of this software in any fashion."
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${HOMEPAGE}

WRKDIST =	${WRKDIR}
WANTLIB +=	c

NO_TEST =	Yes

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CC} -o asm6 asm6.c
	tr -d '\r' < ${WRKSRC}/README.TXT > ${WRKSRC}/README2.TXT

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/asm6 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asm6
	${INSTALL_MAN} ${WRKDIST}/README2.TXT \
	    ${PREFIX}/share/doc/asm6/README.TXT

.include <bsd.port.mk>
