# $OpenBSD: Makefile,v 1.3 2001/05/20 12:51:39 kevlo Exp $

COMMENT=	"fast Java decompiler"

DISTNAME=	jadob158
PKGNAME=	jad-1.5.8c
CATEGORIES=	devel
NEED_VERSION=	1.402

HOMEPAGE=	http://www.geocities.com/SiliconValley/Bridge/8617/jad.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   "shareware"
PERMIT_PACKAGE_FTP=     "shareware"
PERMIT_DISTFILES_CDROM= "shareware"
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.geocities.com/SiliconValley/Bridge/8617/jad/openbsd/
EXTRACT_SUFX=	.zip

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jad
	${INSTALL_PROGRAM} ${WRKSRC}/jad ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Readme.txt ${PREFIX}/share/doc/jad 

.include <bsd.port.mk>
