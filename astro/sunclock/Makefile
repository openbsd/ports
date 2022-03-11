COMMENT-main=		display the phase of the Sun on a map of the Earth
COMMENT-maps=		additional maps of the Earth for sunclock

VERSION=		3.57
DISTNAME=		sunclock-${VERSION}
CATEGORIES=		astro

MASTER_SITES=		https://raw.githubusercontent.com/nongiach/Sunclock/f4106eb0a81f7594726d6b2859efd8fc64cc1225/
SUPDISTFILES=		big_images_270804.tar.bz2 \
			medium_images_270804.tar.bz2 \
			e43_color1_sh_16k.jpg \
			huge.jpg
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	imake
NO_TEST=		Yes

PSEUDO_FLAVORS=	no_maps
FLAVOR?=	no_maps
MULTI_PACKAGES=	 -main -maps

.include <bsd.port.arch.mk>

RUN_DEPENDS-maps=	astro/sunclock
PKG_ARCH-maps=	*

# GPL
PERMIT_PACKAGE=	Yes
PERMIT_PACKAGE-maps=	no license for additional maps

WANTLIB-main=		X11 Xpm c m z jpeg png
DIST_SUBDIR=		sunclock


LIB_DEPENDS-main=	graphics/jpeg \
			graphics/png

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

.if ${BUILD_PACKAGES:M-maps} # with maps
DISTFILES+=	${SUPDISTFILES}

post-extract:
	PATH=${PORTPATH} ${BZIP2} -dkc ${FULLDISTDIR}/medium_images_270804.tar.bz2 | tar -xf - \
		-C ${WRKSRC}/vmf -s '#images/medium#.#'
	PATH=${PORTPATH} ${BZIP2} -dkc ${FULLDISTDIR}/big_images_270804.tar.bz2 | tar -xf - \
		-C ${WRKSRC}/vmf -s '#images/big#.#'
	cp ${FULLDISTDIR}/e43_color1_sh_16k.jpg ${WRKSRC}/vmf/
	cp ${FULLDISTDIR}/huge.jpg ${WRKSRC}/vmf/
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/sunclock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sunclock.man ${PREFIX}/man/man1/sunclock.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/sunclock
	${INSTALL_DATA} ${WRKSRC}/Sunclockrc ${PREFIX}/share/sunclock/
	${INSTALL_DATA_DIR} ${PREFIX}/share/sunclock/earthmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/sunclock/earthmaps/vmf
	${INSTALL_DATA_DIR} ${PREFIX}/share/sunclock/i18n
	${INSTALL_DATA_DIR} ${PREFIX}/share/sunclock/wm_icons/
	${INSTALL_DATA} ${WRKSRC}/wm_icons/* ${PREFIX}/share/sunclock/wm_icons/
.if ${BUILD_PACKAGES:M-maps}
	${INSTALL_DATA} ${WRKSRC}/vmf/*jpg ${PREFIX}/share/sunclock/earthmaps/
	${INSTALL_DATA} ${WRKSRC}/vmf/*png ${PREFIX}/share/sunclock/earthmaps/
.endif
	${INSTALL_DATA} ${WRKSRC}/vmf/*vmf ${PREFIX}/share/sunclock/earthmaps/vmf/
	${INSTALL_DATA} ${WRKSRC}/i18n/Sunclock.* ${PREFIX}/share/sunclock/i18n/

.include <bsd.port.mk>
