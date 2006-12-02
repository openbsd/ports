# $OpenBSD: Makefile,v 1.5 2006/12/02 20:24:17 pvalchev Exp $

COMMENT=		"DVD ripper"

DISTNAME=		dvdbackup-0.1.1
PKGNAME=		${DISTNAME}p2
CATEGORIES=		multimedia

HOMEPAGE=		http://dvd-create.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://dvd-create.sourceforge.net/

LIB_DEPENDS=		dvdnav.>=5::multimedia/libdvdnav
WANTLIB=		c pthread

NO_REGRESS=		Yes

CFLAGS+=		-I${LOCALBASE}/include
LDFLAGS+=		-L${LOCALBASE}/lib
WRKDIST=		${WRKDIR}/dvdbackup

do-build:
	cd ${WRKSRC}/src && ${CC} ${CFLAGS} -c dvdbackup.c
	cd ${WRKSRC}/src && ${CC} ${LDFLAGS} -o dvdbackup \
		dvdbackup.o -ldvdnav -pthread

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvdbackup
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dvdbackup
	${INSTALL_PROGRAM} ${WRKBUILD}/src/dvdbackup ${PREFIX}/bin

.include <bsd.port.mk>
