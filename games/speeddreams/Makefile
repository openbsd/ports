# $OpenBSD: Makefile,v 1.1.1.1 2013/08/23 11:16:15 pascal Exp $

SHARED_ONLY =		Yes

ONLY_FOR_ARCHS =	amd64 i386

MULTI_PACKAGES =	-main -data

COMMENT-main =		open source motorsport simulation
COMMENT-data =		open source motorsport simulation, data files

V =			2.0.0
REV =			r4687
DISTNAME =		speed-dreams-src-base-$V-${REV}
PKGNAME-main =		speeddreams-$V
PKGNAME-data =		speeddreams-data-$V

CATEGORIES =		games

HOMEPAGE =		http://www.speed-dreams.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main += GL GLU ICE SDL SM X11 Xext Xrandr c enet jpeg m openal
WANTLIB-main += png pthread stdc++ z
WANTLIB-data = #empty

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=speed-dreams/}
EXTRACT_SUFX =		.tar.xz
# avoid WRKDIST = ${WRKDIR}
EXTRACT_CASES = *.tar.xz) \
        xzcat ${FULLDISTDIR}/$$archive | ${TAR} xf - -C ${WRKDIST};;

DISTFILES = \
	${DISTNAME}${EXTRACT_SUFX} \
	speed-dreams-src-hq-cars-and-tracks-$V-${REV}${EXTRACT_SUFX} \
	speed-dreams-src-more-hq-cars-and-tracks-$V-${REV}${EXTRACT_SUFX} \
	speed-dreams-src-wip-cars-and-tracks-$V-${REV}${EXTRACT_SUFX} \
	speed-dreams-src-unmaintained-$V-${REV}${EXTRACT_SUFX}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/plib
LIB_DEPENDS-main =	net/enet \
			devel/sdl \
			audio/openal \
			graphics/png \
			graphics/jpeg
RUN_DEPENDS-main =	${BASE_PKGPATH},-data

PKG_ARCH-data =		*

CONFIGURE_ARGS +=	-DOPTION_OFFICIAL_ONLY=ON

NO_TEST =		Yes

pre-extract:
	@mkdir ${WRKDIST}

.include <bsd.port.mk>
