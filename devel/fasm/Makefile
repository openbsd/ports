# $OpenBSD: Makefile,v 1.2 2009/02/06 11:41:35 pirofti Exp $

ONLY_FOR_ARCHS =	i386

COMMENT =		flat assembler
DISTNAME =		fasm-1.67.29
PKGNAME =		${DISTNAME}p0
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
