# $OpenBSD: Makefile,v 1.2 2001/05/06 00:13:04 lebel Exp $

COMMENT=	"fast Java decompiler"

DISTNAME=	jadob157
PKGNAME=	jad-1.5.7f
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
