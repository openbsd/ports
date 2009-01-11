# $OpenBSD: Makefile,v 1.1.1.1 2009/01/11 18:23:25 pirofti Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		flat assembler
DISTNAME =		fasm-1.67.29
CATEGORIES =		devel lang
HOMEPAGE =		http://flatassembler.net/
MAINTAINER =		Dmitri Alenichev <mitya@rootshell.be>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}

NO_REGRESS =		Yes

WRKSRC =		${WRKDIR}/fasm

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} fasm.o -o fasm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fasm ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fasm
	${INSTALL_DATA} ${WRKSRC}/*.txt ${PREFIX}/share/doc/fasm

.include <bsd.port.mk>
