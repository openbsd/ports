# $OpenBSD: Makefile,v 1.2 2000/06/12 20:40:02 fgsch Exp $

PKGNAME=	pccts-1.33
CATEGORIES=	devel lang
NEED_VERSION=	1.302
MASTER_SITES=	http://www.polhode.com/
DISTNAME=	pccts133mr

MAINTAINER=	fgsch@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_ZIP=	Yes
WRKDIST=	${WRKDIR}/pccts

MAKE_FILE=	makefile
ALL_TARGET=

do-install:
	cd ${WRKSRC}/bin && ${INSTALL_PROGRAM} antlr dlg genmk sor \
	  ${PREFIX}/bin 
	${INSTALL_DATA_DIR} ${PREFIX}/include/pccts
	${INSTALL_DATA} ${WRKSRC}/h/* ${PREFIX}/include/pccts

.include <bsd.port.mk>
