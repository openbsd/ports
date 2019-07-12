# $OpenBSD: Makefile,v 1.28 2019/07/12 20:46:14 sthen Exp $

COMMENT=	jump'n'run game with unique video effects

VERSION=	0.8.10
DVERSION=	0.8.6
DISTNAME=	amphetamine-${VERSION}
PKGNAME=	amph-${VERSION}
REVISION=	8
CATEGORIES=	games x11
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://n.ethz.ch/student/loehrerl/amph/amph.html

MASTER_SITES=	http://n.ethz.ch/student/loehrerl/amph/files/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL Xpm Xt c m

COMPILER =		base-clang ports-gcc base-gcc

DISTFILES=	amphetamine-data-${DVERSION}${EXTRACT_SUFX} \
		${DISTNAME}${EXTRACT_SUFX}

LIB_DEPENDS=	devel/sdl

NO_TEST=	Yes
USE_GMAKE=	Yes
MAKE_ENV=	CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" PREFIX="${PREFIX}" X11BASE="${X11BASE}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/amph ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amph
	${INSTALL_DATA_DIR} ${PREFIX}/share/amph
	@cp -Rp ${WRKDIR}/amph/* ${PREFIX}/share/amph/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/amph
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/amph

.include <bsd.port.mk>
