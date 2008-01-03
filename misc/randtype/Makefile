# $OpenBSD: Makefile,v 1.1.1.1 2008/01/03 21:51:54 okan Exp $

COMMENT=	output characters or lines at random intervals

DISTNAME=	randtype-1.13
CATEGORIES=	misc

HOMEPAGE=	http://bjk.sourceforge.net/randtype/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bjk/}

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c z

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/randtype ${PREFIX}/bin
	gunzip ${WRKSRC}/randtype.1.gz
	${INSTALL_MAN} ${WRKSRC}/randtype.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
