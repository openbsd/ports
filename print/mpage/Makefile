# $OpenBSD: Makefile,v 1.30 2013/02/09 14:49:52 sthen Exp $

COMMENT=	print multiple pages per sheet on PostScript printer

DISTNAME=	mpage-2.5.6
CATEGORIES=	print
REVISION=	1

MAINTAINER=	Ian McWilliam <kaosagnt@tpg.com.au>

PERMIT_PACKAGE_CDROM=	incomplete license
PERMIT_PACKAGE_FTP=	incomplete license
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://ftp.mesa.nl/pub/mpage/ \
		ftp://ftp.mesa.nl/pub/mpage/old/
EXTRACT_SUFX=	.tgz

FLAVORS=	a4
FLAVOR?=

ALL_TARGET=	default
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} $${DEFS}' PREFIX='${PREFIX}'
USE_GROFF =	Yes

.if ${FLAVOR} == "a4"
MAKE_FLAGS+=	PAGESIZE=A4
.else
MAKE_FLAGS+=	PAGESIZE=Letter
.endif

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mpage ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/mpage.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/mpage
	${INSTALL_DATA} ${WRKSRC}/Encodings/* ${PREFIX}/share/mpage

.include <bsd.port.mk>
