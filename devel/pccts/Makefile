# $OpenBSD: Makefile,v 1.4 2000/09/12 15:37:34 brad Exp $

DISTNAME=	pccts133mr22
PKGNAME=	pccts-1.33r22
CATEGORIES=	devel lang
NEED_VERSION=	1.328
MASTER_SITES=	http://www.polhode.com/
EXTRACT_SUFX=	.zip

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FILE=	makefile

ALL_TARGET=

WRKDIST=	${WRKDIR}/pccts

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/pccts
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} antlr dlg genmk sor \
	  ${PREFIX}/bin 
	${INSTALL_DATA} ${WRKSRC}/h/* ${PREFIX}/include/pccts

.include <bsd.port.mk>
