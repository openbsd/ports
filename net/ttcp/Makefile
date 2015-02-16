# $OpenBSD: Makefile,v 1.10 2015/02/16 22:57:11 naddy Exp $

COMMENT=	benchmarking tool for analysing TCP and UDP performance

PKGNAME=	ttcp-1.12
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.sgi.com/sgi/src/ttcp/
DISTFILES=	ttcp.c ttcp.1 README
EXTRACT_ONLY=
DIST_SUBDIR=	ttcp

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c 

SEPARATE_BUILD=	Yes

WRKDIST=	${WRKDIR}

post-extract:
	@cd ${FULLDISTDIR} && cp -f ${DISTFILES} ${WRKSRC}

do-build:
	${CC} ${CFLAGS} -o ${WRKBUILD}/ttcp ${WRKSRC}/ttcp.c

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttcp
	${INSTALL_PROGRAM} ${WRKBUILD}/ttcp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ttcp.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ttcp

.include <bsd.port.mk>
