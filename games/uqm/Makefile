# $OpenBSD: Makefile,v 1.23 2007/06/01 02:11:23 jolan Exp $

COMMENT-main=		"ur-quan masters: sdl port of star control 2; multiplayer"
COMMENT-content=	"ur-quan masters: game content"
COMMENT-remix1=		"ur-quan masters: remix pack number one"
COMMENT-remix2=		"ur-quan masters: remix pack number two"
COMMENT-remix3=		"ur-quan masters: remix pack number three"
COMMENT-threedomusic=	"ur-quan masters: 3DO music content"
COMMENT-voice=		"ur-quan masters: speech content"

VER=			0.6.0
DISTNAME=		uqm-0.6.2
CATEGORIES=		games x11
PDIST=			${DISTNAME}-source.tgz
CDIST=			uqm-${VER}-content.uqm
MDIST=			uqm-${VER}-3domusic.uqm
VDIST=			uqm-${VER}-voice.uqm
RM1DIST=		uqm-remix-pack1.zip
RM2DIST=		uqm-remix-pack2.zip
RM3DIST=		uqm-remix-pack3.zip
DISTFILES=		${PDIST} ${CDIST}
SUPDISTFILES=		${MDIST} ${VDIST} ${RM1DIST} ${RM2DIST} ${RM3DIST}
DIST_SUBDIR=		uqm
CATEGORIES=		games x11
PKGNAME-main=		uqm-0.6.2
PKGNAME-content=	uqm-content-${VER}
PKGNAME-remix1=		uqm-remix1-${VER}
PKGNAME-remix2=		uqm-remix2-${VER}
PKGNAME-remix3=		uqm-remix3-${VER}
PKGNAME-threedomusic=	uqm-threedomusic-${VER}
PKGNAME-voice=		uqm-voice-${VER}
EXTRACT_ONLY=		${PDIST}
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sc2/}

HOMEPAGE=		http://sc2.sourceforge.net/

# GPL + Creative Commons Attribution-NonCommercial-ShareAlike 2.5
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS-main=	mikmod.>=2.4::audio/libmikmod \
			vorbisidec.>=1::audio/tremor \
			SDL_image::devel/sdl-image
PKG_ARCH-content=	*
PKG_ARCH-remix1=	*
PKG_ARCH-remix2=	*
PKG_ARCH-remix3=	*
PKG_ARCH-threedomusic=	*
PKG_ARCH-voice=		*
RUN_DEPENDS=		:${PKGNAME-main}:games/uqm
RUN_DEPENDS-content=	
RUN_DEPENDS-main=	:${PKGNAME-content}:games/uqm,-content
WANTLIB-main=		X11 Xext c m pthread usbhid z \
			SDL

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

WRKSRC=	${WRKDIST}/sc2

PSEUDO_FLAVORS=	remix1 remix2 remix3 threedomusic voice
FLAVOR?=

MULTI_PACKAGES= -main -content
.if ${FLAVOR:L:Mremix1}
DISTFILES+=	${RM1DIST}
MULTI_PACKAGES+=-remix1
.endif
.if ${FLAVOR:L:Mremix2}
DISTFILES+=	${RM2DIST}
MULTI_PACKAGES+=-remix2
.endif
.if ${FLAVOR:L:Mremix3}
DISTFILES+=	${RM3DIST}
MULTI_PACKAGES+=-remix3
.endif
.if ${FLAVOR:L:Mthreedomusic}
DISTFILES+=	${MDIST}
MULTI_PACKAGES+=-threedomusic
.endif
.if ${FLAVOR:L:Mvoice}
DISTFILES+=	${VDIST}
MULTI_PACKAGES+=-voice
.endif

BYTEORDER!=sysctl -n hw.byteorder

do-configure:
.if ${BYTEORDER} == "1234"
	@sed -e "s|@PREFIX@|${PREFIX}|g ; s|@ENDIAN@|undef|g" \
		${FILESDIR}/config_unix.h > ${WRKSRC}/src/config_unix.h
.else
	@sed -e "s|@PREFIX@|${PREFIX}|g ; s|@ENDIAN@|define|g" \
		${FILESDIR}/config_unix.h > ${WRKSRC}/src/config_unix.h
.endif
	@sed -e "s|@CC@|${CC}|g ; s|@CFLAGS@|${CFLAGS}|g ; \
		s|@LOCALBASE@|${LOCALBASE}|g ; s|@PREFIX@|${PREFIX}|g ; \
		s|@X11BASE@|${X11BASE}|g" ${FILESDIR}/build.vars \
		> ${WRKSRC}/build.vars

do-build:
	cd ${WRKBUILD}; env MAKE_VERBOSE=1 ./build.sh uqm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uqm
	${INSTALL_DATA_DIR} ${PREFIX}/share/uqm/content/packages/addons/uqmremix
	${INSTALL_DATA} ${WRKBUILD}/doc/users/manual.txt \
		${PREFIX}/share/doc/uqm
	${INSTALL_DATA} ${WRKBUILD}/content/version \
		${PREFIX}/share/uqm/content
	${INSTALL_DATA} ${FULLDISTDIR}/${CDIST} \
		${PREFIX}/share/uqm/content/packages
.if ${FLAVOR:L:Mremix1}
	${INSTALL_DATA} ${FULLDISTDIR}/${RM1DIST} \
		${PREFIX}/share/uqm/content/packages/addons/uqmremix
.endif
.if ${FLAVOR:L:Mremix2}
	${INSTALL_DATA} ${FULLDISTDIR}/${RM2DIST} \
		${PREFIX}/share/uqm/content/packages/addons/uqmremix
.endif
.if ${FLAVOR:L:Mremix2}
	${INSTALL_DATA} ${FULLDISTDIR}/${RM3DIST} \
		${PREFIX}/share/uqm/content/packages/addons/uqmremix
.endif
.if ${FLAVOR:L:Mthreedomusic}
	${INSTALL_DATA} ${FULLDISTDIR}/${MDIST} \
		${PREFIX}/share/uqm/content/packages
.endif
.if ${FLAVOR:L:Mvoice}
	${INSTALL_DATA} ${FULLDISTDIR}/${VDIST} \
		${PREFIX}/share/uqm/content/packages
.endif
	${INSTALL_PROGRAM} ${WRKBUILD}/uqm ${PREFIX}/bin

.include <bsd.port.mk>
