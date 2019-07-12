# $OpenBSD: Makefile,v 1.25 2019/07/12 20:45:15 sthen Exp $

COMMENT=	Purdue Compiler Construction Tool Set

DISTNAME=	pccts133mr33
PKGNAME=	pccts-1.33r33
CATEGORIES=	devel lang
MASTER_SITES=	http://www.polhode.com/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.polhode.com/pccts.html

PERMIT_PACKAGE=	Yes
WANTLIB=		c

MAKE_FILE=	makefile
MAKE_FLAGS=	CC="${CC}" COPT="${CFLAGS} -DPCCTS_USE_STDARG"

ALL_TARGET=

WRKDIST=	${WRKDIR}/pccts

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/pccts
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} antlr dlg genmk sor \
	  ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/h/* ${PREFIX}/include/pccts

.include <bsd.port.mk>
