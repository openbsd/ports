# $OpenBSD: Makefile,v 1.6 2007/09/16 02:52:59 merdely Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	fast Java decompiler

DISTNAME=	jadob158
PKGNAME=	jad-1.5.8c
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   shareware
PERMIT_PACKAGE_FTP=     shareware
PERMIT_DISTFILES_CDROM= shareware
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITE_OPENBSD=	Yes
EXTRACT_SUFX=	.zip

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jad
	${INSTALL_PROGRAM} ${WRKSRC}/jad ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Readme.txt ${PREFIX}/share/doc/jad 

.include <bsd.port.mk>
