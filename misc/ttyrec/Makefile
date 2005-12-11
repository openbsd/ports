# $OpenBSD: Makefile,v 1.7 2005/12/11 18:45:17 alek Exp $

COMMENT=	"tty recorder"

DISTNAME=	ttyrec-1.0.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	misc
MASTER_SITES=	http://namazu.org/~satoru/ttyrec/

HOMEPAGE=	http://namazu.org/~satoru/ttyrec/index.html.en

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

BIN=	ttyplay ttyrec ttytime

do-install:
	@cd ${WRKSRC} && ${INSTALL_PROGRAM} ${BIN} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttyrec
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ttyrec
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
