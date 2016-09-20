# $OpenBSD: Makefile,v 1.5 2016/09/20 18:18:52 pascal Exp $

ONLY_FOR_ARCHS =	amd64 i386

MULTI_PACKAGES =	-main -data

COMMENT-main =		open source motorsport simulation
COMMENT-data =		open source motorsport simulation, data files

V =			2.2.1
REV =			r6404
DISTNAME =		speed-dreams-src-base-$V-${REV}
PKGNAME-main =		speeddreams-$V
PKGNAME-data =		speeddreams-data-$V

CATEGORIES =		games

HOMEPAGE =		http://www.speed-dreams.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main += GL GLU ICE OpenThreads SDL2 SM X11 Xext Xrandr c enet
WANTLIB-main += expat jpeg m ogg openal osg osgDB osgFX osgGA osgParticle
WANTLIB-main += osgShadow osgUtil osgViewer png pthread stdc++ vorbis
WANTLIB-main += vorbisfile z
WANTLIB-data = #empty

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=speed-dreams/}
EXTRACT_SUFX =		.tar.xz
TAR =			${LOCALBASE}/bin/gtar
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
BUILD_DEPENDS =		devel/plib \
			archivers/gtar
LIB_DEPENDS-main =	net/enet \
			devel/sdl2 \
			audio/openal \
			graphics/png \
			graphics/jpeg \
			audio/libvorbis \
			graphics/openscenegraph
RUN_DEPENDS-main =	${BASE_PKGPATH},-data

PKG_ARCH-data =		*

CONFIGURE_ARGS +=	-DOPTION_OFFICIAL_ONLY=ON \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${LOCALBASE}/lib" \
			-DCMAKE_MODULE_LINKER_FLAGS="-L${LOCALBASE}/lib" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

CXXFLAGS +=		-I${X11BASE}/include

pre-extract:
	@mkdir ${WRKDIST}

post-extract:
	perl -pi -e 's/\015$$//' ${WRKSRC}/src/modules/simu/simuv4/simu.cpp

.include <bsd.port.mk>
