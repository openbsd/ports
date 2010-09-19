# $OpenBSD: Makefile,v 1.12 2010/09/19 20:55:01 sthen Exp $

COMMENT=	open source clone of the game Transport Tycoon Deluxe

V=		1.0.3
DISTNAME=	openttd-${V}
REVISION=	0
EXTRACT_SUFX=	-source.tar.bz2
DIST_GFX=	opengfx-0.2.4
DIST_SFX=	opensfx-0.2.3
DIST_MSX=	openmsx-0.3.1
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DIST_GFX}.tar.bz2:0 ${DIST_SFX}.zip:1 ${DIST_MSX}.zip:2

CATEGORIES=	games

HOMEPAGE=	http://www.openttd.org/

MAINTAINER=	Daniel Dickman <didickman@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += SDL c expat fontconfig freetype icudata icui18n icuuc
WANTLIB += lzo2 m png pthread stdc++ z

MASTER_SITES=		http://cz.binaries.openttd.org/openttd/binaries/releases/${V}/
MASTER_SITES0=		http://bundles.openttdcoop.org/opengfx/releases/
MASTER_SITES1=		http://bundles.openttdcoop.org/opensfx/releases/
MASTER_SITES2=		http://bundles.openttdcoop.org/openmsx/releases/0.3.1/

LIB_DEPENDS=		::archivers/lzo2 \
			::devel/sdl \
			::graphics/png \
			::textproc/icu4c

RUN_DEPENDS=            ::devel/desktop-file-utils

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
			--without-libtimidity

MAKE_ENV+=		VERBOSE=1

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

DOCSDIR=		${PREFIX}/share/doc/openttd
EXAMPLESDIR=		${PREFIX}/share/examples/openttd
GAMEDIR=		${PREFIX}/share/openttd

FAKE_FLAGS=BUNDLE_DIR=${WRKINST}/bundle BUNDLES_DIR=${WRKINST}/bundle

post-install:
	${INSTALL_DATA_DIR} ${GAMEDIR}/media
	${INSTALL_DATA} ${WRKSRC}/media/* ${GAMEDIR}/media
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/bin/scripts/* ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCSDIR}
	${INSTALL_DATA} ${WRKDIR}/${DIST_GFX}/*.{grf,obg} ${GAMEDIR}/data
	${INSTALL_DATA} ${WRKDIR}/${DIST_SFX}/*.{cat,obs} ${GAMEDIR}/data
	${INSTALL_DATA} ${WRKDIR}/${DIST_MSX}/*.{mid,obm} ${GAMEDIR}/gm

.include <bsd.port.mk>
