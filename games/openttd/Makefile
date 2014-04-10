# $OpenBSD: Makefile,v 1.35 2014/04/10 06:32:48 bentley Exp $

COMMENT=	open source clone of the game Transport Tycoon Deluxe

V =		1.4.0
DISTNAME =	openttd-${V}
EXTRACT_SUFX=	-source.tar.gz
GFX_V =		0.5.0
SFX_V=		0.2.3
MSX_V=		0.3.1
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		opengfx-${GFX_V}.zip:0 \
		opensfx-${SFX_V}.zip:1 \
		openmsx-${MSX_V}.zip:2
DIST_SUBDIR=	openttd

CATEGORIES=	games

HOMEPAGE=	https://www.openttd.org/en/

MAINTAINER =	Anthony J. Bentley <anthony@cathet.us>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL c fontconfig freetype icudata icui18n icuuc
WANTLIB += icule iculx lzma lzo2 m png pthread stdc++ xdg-basedir z

MASTER_SITES=		http://binaries.openttd.org/releases/${V}/
MASTER_SITES0=		https://bundles.openttdcoop.org/opengfx/releases/${GFX_V}/
MASTER_SITES1=		https://bundles.openttdcoop.org/opensfx/releases/${SFX_V}/
MASTER_SITES2=		https://bundles.openttdcoop.org/openmsx/releases/${MSX_V}/

LIB_DEPENDS=		archivers/lzo2 \
			devel/sdl \
			graphics/png \
			textproc/icu4c \
			archivers/xz \
			x11/libxdg-basedir

RUN_DEPENDS=            devel/desktop-file-utils \
			x11/gtk+2,-guic

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix-dir=${PREFIX} \
			--binary-dir=bin \
			--data-dir=share/openttd \
			--icon-dir=share/pixmaps \
			--man-dir=man/man6 \
			--personal-dir=.openttd \
			--install-dir=${WRKINST} \
			--with-png \
			--with-zlib \
			--without-allegro \
			--without-libtimidity \
			--CFLAGS_BUILD="${CFLAGS}" \
			--disable-strip

MAKE_ENV+=		VERBOSE=1

USE_GMAKE=		Yes
NO_TEST=		Yes

DOCSDIR=		${PREFIX}/share/doc/openttd
EXAMPLESDIR=		${PREFIX}/share/examples/openttd
GAMEDIR=		${PREFIX}/share/openttd

FAKE_FLAGS=BUNDLE_DIR=${WRKINST}/bundle BUNDLES_DIR=${WRKINST}/bundle

post-extract:
	cd ${WRKDIR} && ${TAR} xf opengfx-${GFX_V}.tar

post-install:
	${INSTALL_DATA_DIR} ${GAMEDIR}/media
	cd ${WRKSRC}/media/ && umask 022 && pax -rw . ${GAMEDIR}/media
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/bin/scripts/* ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cd ${WRKSRC}/docs/ && umask 022 && pax -rw . ${DOCSDIR}
	${INSTALL_DATA_DIR} ${GAMEDIR}/data
	${INSTALL_DATA_DIR} ${GAMEDIR}/gm
	${INSTALL_DATA} ${WRKDIR}/opengfx-${GFX_V}/*.{grf,obg} ${GAMEDIR}/data
	${INSTALL_DATA} ${WRKDIR}/opensfx-${SFX_V}/*.{cat,obs} ${GAMEDIR}/data
	${INSTALL_DATA} ${WRKDIR}/openmsx-${MSX_V}/*.{mid,obm} ${GAMEDIR}/gm
	rm -rf ${WRKINST}/bundle
	rm -rf ${GAMEDIR}/media/openttd.desktop*

.include <bsd.port.mk>
