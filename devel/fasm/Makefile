# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:03 espie Exp $

ONLY_FOR_ARCHS =	i386

COMMENT =		flat assembler
DISTNAME =		fasm-1.67.29
REVISION =		0
CATEGORIES =		devel lang
HOMEPAGE =		http://flatassembler.net/
MAINTAINER =		Dmitri Alenichev <mitya@rootshell.be>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}

NO_TEST =		Yes

WRKSRC =		${WRKDIR}/fasm

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} fasm.o -o fasm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fasm ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fasm
	${INSTALL_DATA} ${WRKSRC}/*.txt ${PREFIX}/share/doc/fasm

.include <bsd.port.mk>
