# $OpenBSD: Makefile,v 1.34 2015/12/23 12:33:51 jca Exp $

COMMENT=	print multiple pages per sheet on PostScript printer

DISTNAME=	mpage-2.5.6
EXTRACT_SUFX=	.tgz
REVISION=	3

CATEGORIES=	print

MAINTAINER=	Ian McWilliam <kaosagnt@gmail.com>

PERMIT_PACKAGE_CDROM=	incomplete license
PERMIT_PACKAGE_FTP=	incomplete license
PERMIT_DISTFILES_FTP=	Yes

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
