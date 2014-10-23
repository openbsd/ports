# $OpenBSD: Makefile,v 1.5 2014/10/23 07:26:55 jasper Exp $

ONLY_FOR_ARCHS =	i386

COMMENT =		flat assembler
DISTNAME =		fasm-1.67.29
REVISION =		1
CATEGORIES =		devel lang
HOMEPAGE =		http://flatassembler.net/
MAINTAINER =		Dmitri Alenichev <mitya@rockers.su>

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
