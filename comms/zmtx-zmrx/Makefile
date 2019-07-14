# $OpenBSD: Makefile,v 1.28 2019/07/14 02:16:51 naddy Exp $

COMMENT=	receive/send files via ZMODEM protocol (unrestricted)

DISTNAME=	zmtx-zmrx-1.02
CATEGORIES=	comms
REVISION=	2

PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	Yes

WANTLIB=		c

MASTER_SITES=	ftp://ftp.netsw.org/net/modem/protocols/zmodem/zmtx-zmrx/
# see also comp.unix.sources for version 1.0
# ftp://ftp.lth.se/pub/usenet/comp.sources.unix/volume28/zm/part01.gz

WRKDIST=	${WRKDIR}/zmtx-zmrx
CFLAGS+=	--std=gnu89
MAKE_FILE=	makefile
MAKE_FLAGS=	CC="${CC}"

NO_TEST=	Yes

do-install:
.for f in zmrx zmtx
	${INSTALL_PROGRAM} ${WRKSRC}/$f ${PREFIX}/bin 
	${INSTALL_MAN} ${WRKSRC}/$f.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
