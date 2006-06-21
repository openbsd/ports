# $OpenBSD: Makefile,v 1.8 2006/06/21 10:08:07 alek Exp $

COMMENT=	"tty recorder"

DISTNAME=	ttyrec-1.0.8
CATEGORIES=	misc

HOMEPAGE=	http://0xcc.net/ttyrec/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

BIN=	ttyplay ttyrec ttytime

do-install:
	@cd ${WRKSRC} && ${INSTALL_PROGRAM} ${BIN} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttyrec
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ttyrec
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
