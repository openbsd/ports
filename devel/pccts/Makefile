# $OpenBSD: Makefile,v 1.13 2002/03/21 20:46:25 espie Exp $

COMMENT=	Purdue Compiler Construction Tool Set 

DISTNAME=	pccts133mr32
PKGNAME=	pccts-1.33r32
CATEGORIES=	devel lang
NEED_VERSION=	1.515
MASTER_SITES=	http://www.polhode.com/
EXTRACT_SUFX=	.zip

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://www.polhode.com/pccts.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FILE=	makefile
MAKE_FLAGS=	COPT="${CFLAGS}"

ALL_TARGET=

WRKDIST=	${WRKDIR}/pccts

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/pccts
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} antlr dlg genmk sor \
	  ${PREFIX}/bin 
	${INSTALL_DATA} ${WRKSRC}/h/* ${PREFIX}/include/pccts

.include <bsd.port.mk>
