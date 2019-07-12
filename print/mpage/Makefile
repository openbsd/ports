# $OpenBSD: Makefile,v 1.36 2019/07/12 20:48:56 sthen Exp $

COMMENT=	print multiple pages per sheet on PostScript printer

DISTNAME=	mpage-2.5.7
EXTRACT_SUFX=	.tgz

CATEGORIES=	print

MAINTAINER=	Ian McWilliam <kaosagnt@gmail.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	http://www.mesa.nl/pub/mpage/ \
		ftp://ftp.mesa.nl/pub/mpage/ \
		ftp://ftp.mesa.nl/pub/mpage/old/

ALL_TARGET=	default
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} $${DEFS}' PREFIX='${PREFIX}'

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mpage ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/mpage.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/mpage
	${INSTALL_DATA} ${WRKSRC}/Encodings/* ${PREFIX}/share/mpage

.include <bsd.port.mk>
