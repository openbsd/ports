# $OpenBSD: Makefile,v 1.4 2001/12/01 12:18:29 kevlo Exp $

COMMENT=	"fast Java decompiler"

DISTNAME=	jadob158
PKGNAME=	jad-1.5.8c
CATEGORIES=	devel
NEED_VERSION=	1.500

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   "shareware"
PERMIT_PACKAGE_FTP=     "shareware"
PERMIT_DISTFILES_CDROM= "shareware"
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITE_OPENBSD=	Yes
EXTRACT_SUFX=	.zip

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jad
	${INSTALL_PROGRAM} ${WRKSRC}/jad ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Readme.txt ${PREFIX}/share/doc/jad 

.include <bsd.port.mk>
