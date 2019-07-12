# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:55 sthen Exp $

COMMENT=		DVD ripper

DISTNAME=		dvdbackup-0.1.1
REVISION=		3
CATEGORIES=		multimedia

HOMEPAGE=		http://dvd-create.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://dvd-create.sourceforge.net/

LIB_DEPENDS=		multimedia/libdvdnav
WANTLIB=		c dvdnav dvdread pthread

NO_TEST=		Yes

CFLAGS+=		-I${LOCALBASE}/include
LDFLAGS+=		-L${LOCALBASE}/lib
WRKDIST=		${WRKDIR}/dvdbackup

do-build:
	cd ${WRKSRC}/src && ${CC} ${CFLAGS} -c dvdbackup.c
	cd ${WRKSRC}/src && ${CC} ${LDFLAGS} -o dvdbackup \
		dvdbackup.o -ldvdnav -ldvdread -pthread

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvdbackup
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dvdbackup
	${INSTALL_PROGRAM} ${WRKBUILD}/src/dvdbackup ${PREFIX}/bin

.include <bsd.port.mk>
