# $OpenBSD: Makefile,v 1.1.1.1 2003/02/13 14:51:43 naddy Exp $

COMMENT=		"build utility like make"

DISTNAME=	 	jam-2.4	
CATEGORIES=	  	devel	

HOMEPAGE=		http://www.perforce.com/jam/jam.html

MAINTAINER=		Jonathan Auer <jda@auerfamily.org>	

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	 	ftp://ftp.perforce.com/pub/jam/	
EXTRACT_SUFX=		.tar
NO_REGRESS=		Yes
MAKE_FLAGS=		CC="${CC}" CCFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/jam ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/Jam.html ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/Jambase.html ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/Jamfile.html ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/RELNOTES ${PREFIX}/share/doc/jam

.include <bsd.port.mk>
