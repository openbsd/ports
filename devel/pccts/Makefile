# $OpenBSD: Makefile,v 1.10 2001/10/03 16:06:16 naddy Exp $

COMMENT=	Purdue Compiler Construction Tool Set 

DISTNAME=	pccts133mr29
PKGNAME=	pccts-1.33r29
CATEGORIES=	devel lang
NEED_VERSION=	1.406
MASTER_SITES=	http://www.polhode.com/
EXTRACT_SUFX=	.zip

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

HOMEPAGE=	${MASTER_SITES}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FILE=	makefile
MAKE_FLAGS=    COPT="${CFLAGS}"

ALL_TARGET=

WRKDIST=	${WRKDIR}/pccts

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/pccts
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} antlr dlg genmk sor \
	  ${PREFIX}/bin 
	${INSTALL_DATA} ${WRKSRC}/h/* ${PREFIX}/include/pccts

.include <bsd.port.mk>
