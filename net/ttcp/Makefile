# $OpenBSD: Makefile,v 1.8 2012/03/29 13:38:49 sthen Exp $

COMMENT=	benchmarking tool for analysing TCP and UDP performance

PKGNAME=	ttcp-1.12
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.sgi.com/sgi/src/ttcp/
DISTFILES=	ttcp.c ttcp.1 README
EXTRACT_ONLY=
DIST_SUBDIR=	ttcp

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

SEPARATE_BUILD=	Yes

WRKDIST=	${WRKDIR}

post-extract:
	@cd ${FULLDISTDIR} && cp -f ${DISTFILES} ${WRKSRC}

do-build:
	${CC} ${CFLAGS} -o ${WRKBUILD}/ttcp ${WRKSRC}/ttcp.c

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttcp
	${INSTALL_PROGRAM} ${WRKBUILD}/ttcp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ttcp.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ttcp

.include <bsd.port.mk>
