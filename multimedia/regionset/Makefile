# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:44 espie Exp $

COMMENT=	set region on dvd drives

DISTNAME=	regionset-0.1

CATEGORIES=	multimedia

HOMEPAGE=	http://linvdr.org/projects/regionset/
MASTER_SITES=	http://linvdr.org/download/regionset/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/regionset ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/regionset
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/regionset

NO_TEST=	Yes

.include <bsd.port.mk>
