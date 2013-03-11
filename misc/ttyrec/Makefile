# $OpenBSD: Makefile,v 1.15 2013/03/11 11:23:58 espie Exp $

COMMENT=	tty recorder

DISTNAME=	ttyrec-1.0.8
REVISION=	2
CATEGORIES=	misc

HOMEPAGE=	http://0xcc.net/ttyrec/index.html.en

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=	http://0xcc.net/ttyrec/

USE_GROFF =	Yes
NO_TEST=	Yes

BIN=	ttyplay ttyrec ttytime

do-install:
	@cd ${WRKSRC} && ${INSTALL_PROGRAM} ${BIN} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttyrec
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ttyrec
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
