# $OpenBSD: Makefile,v 1.3 2016/10/04 14:23:15 fcambus Exp $

COMMENT =	simple 6502 assembler

DISTNAME =	asm6-1.6
REVISION =	0
EXTRACT_SUFX =	.zip

CATEGORIES =	devel

# "This is free software.  You may use, modify, and / or redistribute any part
# of this software in any fashion."
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_OPENBSD}

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
