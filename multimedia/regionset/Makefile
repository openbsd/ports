COMMENT=	set region on dvd drives

DISTNAME=	regionset-0.2

CATEGORIES=	multimedia

HOMEPAGE=	http://linvdr.org/projects/regionset/
SITES=		http://linvdr.org/download/regionset/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/regionset ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/regionset
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/regionset

.include <bsd.port.mk>
