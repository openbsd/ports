# $OpenBSD: Makefile,v 1.8 2019/07/12 20:44:08 sthen Exp $

ONLY_FOR_ARCHS =	i386

COMMENT =		flat assembler
DISTNAME =		fasm-1.73.04
CATEGORIES =		devel lang
HOMEPAGE =		http://flatassembler.net/
MAINTAINER =		Dmitri Alenichev <mitya@rockers.su>

# BSD
PERMIT_PACKAGE =	Yes
WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}

NO_TEST =		Yes

WRKSRC =		${WRKDIR}/fasm

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -Wl,-znotext fasm.o -o fasm && \
		rm fasm.o && ./fasm source/libc/fasm.asm fasm.o && rm fasm && \
		${CC} ${CFLAGS} -Wl,-znotext fasm.o -o fasm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fasm ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fasm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fasm/libcdemo
	${INSTALL_DATA} ${WRKSRC}/*.txt ${PREFIX}/share/doc/fasm
	${INSTALL_DATA} ${WRKSRC}/examples/libcdemo/*.asm \
		${WRKSRC}/examples/libcdemo/*.inc \
		${PREFIX}/share/doc/fasm/libcdemo

.include <bsd.port.mk>
