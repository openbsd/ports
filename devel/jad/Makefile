# $OpenBSD: Makefile,v 1.8 2008/08/20 15:32:10 ajacoutot Exp $

BROKEN=		bad system call
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

MASTER_SITES=	${MASTER_SITE_OPENBSD}
EXTRACT_SUFX=	.zip

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jad
	${INSTALL_PROGRAM} ${WRKSRC}/jad ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Readme.txt ${PREFIX}/share/doc/jad 

.include <bsd.port.mk>
