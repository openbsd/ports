# $OpenBSD: Makefile,v 1.5 2002/11/23 12:15:20 reinhard Exp $

COMMENT=	"tty recorder"

DISTNAME=	ttyrec-1.0.6
CATEGORIES=	misc
MASTER_SITES=	http://namazu.org/~satoru/ttyrec/

HOMEPAGE=	http://namazu.org/~satoru/ttyrec/index.html.en

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

BIN=	ttyplay ttyrec ttytime

do-install:
	@cd ${WRKSRC} && ${INSTALL_PROGRAM} ${BIN} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttyrec
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ttyrec

.include <bsd.port.mk>
