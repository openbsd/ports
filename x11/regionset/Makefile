# $OpenBSD: Makefile,v 1.1.1.1 2008/01/03 19:06:35 oga Exp $

COMMENT=	set region on dvd drives

DISTNAME=	regionset-0.1

CATEGORIES=	multimedia

HOMEPAGE=	http://linvdr.org/projects/regionset/
MASTER_SITES=	http://linvdr.org/download/regionset/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/regionset ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/regionset
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/regionset

NO_REGRESS=	Yes

.include <bsd.port.mk>
