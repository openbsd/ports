# $OpenBSD: Makefile,v 1.29 2011/11/18 12:38:00 espie Exp $

COMMENT-main=		ur-quan masters: sdl port of star control 2; multiplayer
COMMENT-content=	ur-quan masters: game content
COMMENT-remix1=		ur-quan masters: remix pack number one
COMMENT-remix2=		ur-quan masters: remix pack number two
COMMENT-remix3=		ur-quan masters: remix pack number three
COMMENT-threedomusic=	ur-quan masters: 3DO music content
COMMENT-voice=		ur-quan masters: speech content

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
REVISION-main =		1
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

LIB_DEPENDS-main=	audio/libmikmod \
			audio/tremor \
			devel/sdl-image
PKG_ARCH-content=	*
PKG_ARCH-remix1=	*
PKG_ARCH-remix2=	*
PKG_ARCH-remix3=	*
PKG_ARCH-threedomusic=	*
PKG_ARCH-voice=		*
RUN_DEPENDS=		${PKGNAME-main}:games/uqm
RUN_DEPENDS-content=	
RUN_DEPENDS-main=	${PKGNAME-content}:games/uqm,-content
WANTLIB-main=		c m pthread z SDL mikmod>=2.4 vorbisidec>=1 \
			SDL_image

NO_REGRESS=	Yes
USE_GMAKE=	Yes

WRKSRC=	${WRKDIST}/sc2

PSEUDO_FLAVORS=	no_remix1 no_remix2 no_remix3 no_threedomusic no_voice
FLAVOR?= no_remix1 no_remix2 no_remix3 no_threedomusic no_voice

MULTI_PACKAGES= -main -content -remix1 -remix2 -remix3 -threedomusic -voice

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-remix1}
DISTFILES+=	${RM1DIST}
.endif
.if ${BUILD_PACKAGES:M-remix2}
DISTFILES+=	${RM2DIST}
.endif
.if ${BUILD_PACKAGES:M-remix3}
DISTFILES+=	${RM3DIST}
.endif
.if ${BUILD_PACKAGES:M-threedomusic}
DISTFILES+=	${MDIST}
.endif
.if ${BUILD_PACKAGES:M-voice}
DISTFILES+=	${VDIST}
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
.if ${BUILD_PACKAGES:M-remix1}
	${INSTALL_DATA} ${FULLDISTDIR}/${RM1DIST} \
		${PREFIX}/share/uqm/content/packages/addons/uqmremix
.endif
.if ${BUILD_PACKAGES:M-remix2}
	${INSTALL_DATA} ${FULLDISTDIR}/${RM2DIST} \
		${PREFIX}/share/uqm/content/packages/addons/uqmremix
.endif
.if ${BUILD_PACKAGES:M-remix3}
	${INSTALL_DATA} ${FULLDISTDIR}/${RM3DIST} \
		${PREFIX}/share/uqm/content/packages/addons/uqmremix
.endif
.if ${BUILD_PACKAGES:M-threedomusic}
	${INSTALL_DATA} ${FULLDISTDIR}/${MDIST} \
		${PREFIX}/share/uqm/content/packages
.endif
.if ${BUILD_PACKAGES:M-voice}
	${INSTALL_DATA} ${FULLDISTDIR}/${VDIST} \
		${PREFIX}/share/uqm/content/packages
.endif
	${INSTALL_PROGRAM} ${WRKBUILD}/uqm ${PREFIX}/bin

.include <bsd.port.mk>
