# $OpenBSD: Makefile,v 1.26 2019/07/12 21:02:13 sthen Exp $

COMMENT=	sends AM radio signals using a monitor

VERSION=	1.0.5
DISTNAME=	tempest_for_eliza-${VERSION}
PKGNAME=	tempest-${VERSION}
REVISION=	6
CATEGORIES=	audio

HOMEPAGE=	http://www.erikyyy.de/tempest/

PERMIT_PACKAGE=	Yes

WANTLIB += SDL c m pthread ${COMPILER_LIBCXX}

MASTER_SITES=	${HOMEPAGE}

COMPILER =		base-clang ports-gcc base-gcc

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
