# $OpenBSD: Makefile,v 1.20 2013/03/10 22:55:06 espie Exp $

COMMENT=	sends AM radio signals using a monitor

VERSION=	1.0.5
DISTNAME=	tempest_for_eliza-${VERSION}
PKGNAME=	tempest-${VERSION}
REVISION=	3
CATEGORIES=	audio

HOMEPAGE=	http://www.erikyyy.de/tempest/

PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL c m pthread stdc++

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes

RUN_DEPENDS=	audio/madplay \
		audio/sox
LIB_DEPENDS=	devel/sdl


SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

SONGS=	forelise jonny saints ungarian fruehling oldmacdonald tempest

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tempest_for_eliza ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/tempest_for_mp3 ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mksong.sh ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tempest
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tempest
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tempest
	cd ${WRKSRC}/songs && ${INSTALL_DATA} ${SONGS} ${PREFIX}/share/examples/tempest

.include <bsd.port.mk>
