# $OpenBSD: Makefile,v 1.9 2007/04/01 16:04:06 naddy Exp $

COMMENT-main=		"display the phase of the Sun on a map of the Earth"
COMMENT-maps=		"additional maps of the Earth for sunclock"

VERSION=		3.56
DISTNAME=		sunclock-${VERSION}
PKGNAME-main=		${DISTNAME}
PKGNAME-maps=		sunclock-maps-${VERSION}
CATEGORIES=		astro

HOMEPAGE=		http://frmas.free.fr/li_1.htm

MASTER_SITES=		ftp://ftp.ac-grenoble.fr/ge/geosciences/sunclock/ \
			ftp://ftp.ac-grenoble.fr/ge/geosciences/sunclock/data_packages/
SUPDISTFILES=		big_images_270804.tar.bz2 \
			medium_images_270804.tar.bz2 \
			e43_color1_sh_16k.jpg \
			huge.jpg
EXTRACT_SUFX=		.tar.bz2

FAKE=			lib
USE_X11=		Yes
CONFIGURE_STYLE=	imake
NO_REGRESS=		Yes

PSEUDO_FLAVORS=	no_maps
FLAVOR?=	no_maps

MULTI_PACKAGES=	 -main
.if !${FLAVOR:L:Mno_maps}
MULTI_PACKAGES+= -maps
.endif

PERMIT_PACKAGE_CDROM-maps=	"no license for additional maps"
PERMIT_PACKAGE_FTP-maps=	"no license for additional maps"
RUN_DEPENDS-maps=    ::astro/sunclock
PKG_ARCH-maps=	*

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main=		X11 Xext Xpm c m z
DIST_SUBDIR=		sunclock


LIB_DEPENDS-main=	jpeg.>=62::graphics/jpeg \
			png.>=2::graphics/png

.if ${MULTI_PACKAGES:M-maps} # with maps
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${SUPDISTFILES}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

post-extract:
	${BZIP2} -dkc ${FULLDISTDIR}/medium_images_270804.tar.bz2 | tar -xf - \
		-C ${WRKSRC}/vmf -s '#images/medium#.#'
	${BZIP2} -dkc ${FULLDISTDIR}/big_images_270804.tar.bz2 | tar -xf - \
		-C ${WRKSRC}/vmf -s '#images/big#.#'
	cp ${FULLDISTDIR}/e43_color1_sh_16k.jpg ${WRKSRC}/vmf/
	cp ${FULLDISTDIR}/huge.jpg ${WRKSRC}/vmf/

.else # no maps
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
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
	${INSTALL_DATA} ${WRKSRC}/vmf/*jpg ${PREFIX}/share/sunclock/earthmaps/
	${INSTALL_DATA} ${WRKSRC}/vmf/*png ${PREFIX}/share/sunclock/earthmaps/
	${INSTALL_DATA} ${WRKSRC}/vmf/*vmf ${PREFIX}/share/sunclock/earthmaps/vmf/
	${INSTALL_DATA} ${WRKSRC}/i18n/Sunclock.* ${PREFIX}/share/sunclock/i18n/

.include <bsd.port.mk>
