# $OpenBSD: Makefile,v 1.9 2003/01/21 21:59:50 pvalchev Exp $

COMMENT=	"jump'n run game with unique video effects"

VERSION=	0.8.10
DVERSION=	0.8.6
DISTNAME=	amphetamine-${VERSION}
PKGNAME=	amph-${VERSION}
CATEGORIES=	games x11
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.dataway.ch/~lukasl/amph/amph.html

MASTER_SITES=	http://www.dataway.ch/~lukasl/amph/files/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

DISTFILES=	amphetamine-data-${DVERSION}${EXTRACT_SUFX} \
		${DISTNAME}${EXTRACT_SUFX}

LIB_DEPENDS=	SDL::devel/sdl

NO_REGRESS=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes
MAKE_ENV=	CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" PREFIX="${PREFIX}" X11BASE="${X11BASE}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/amph ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amph
	${INSTALL_DATA_DIR} ${PREFIX}/share/amph
	@cp -Rp ${WRKDIR}/amph/* ${PREFIX}/share/amph/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/amph

.include <bsd.port.mk>
