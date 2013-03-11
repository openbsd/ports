# $OpenBSD: Makefile,v 1.39 2013/03/11 11:07:41 espie Exp $

COMMENT-main=		ur-quan masters: sdl port of star control 2; multiplayer
COMMENT-content=	ur-quan masters: game content
COMMENT-remix1=		ur-quan masters: remix pack number one
COMMENT-remix2=		ur-quan masters: remix pack number two
COMMENT-remix3=		ur-quan masters: remix pack number three
COMMENT-threedomusic=	ur-quan masters: 3DO music content
COMMENT-voice=		ur-quan masters: speech content

VER =			0.7.0
EPOCH=			0# N.B. in RUN_DEPENDS
DISTNAME =		uqm-${VER}
CATEGORIES=		games x11
PDIST=			${DISTNAME}-source.tgz
CDIST =			${DISTNAME}-content.uqm
MDIST =			${DISTNAME}-3domusic.uqm
VDIST =			${DISTNAME}-voice.uqm
RM1DIST =		uqm-remix-disc1.uqm
RM2DIST =		uqm-remix-disc2.uqm
RM3DIST =		uqm-remix-disc3.uqm
DISTFILES=		${PDIST} ${CDIST}
SUPDISTFILES=		${MDIST} ${VDIST} ${RM1DIST} ${RM2DIST} ${RM3DIST}
DIST_SUBDIR=		uqm
CATEGORIES=		games x11
PKGNAME-main=		uqm-${VER}
PKGNAME-content=	uqm-content-${VER}
PKGNAME-remix1=		uqm-remix1-${VER}
PKGNAME-remix2=		uqm-remix2-${VER}
PKGNAME-remix3=		uqm-remix3-${VER}
PKGNAME-threedomusic=	uqm-threedomusic-${VER}
PKGNAME-voice=		uqm-voice-${VER}
REVISION-main=		1
REVISION-content=	1
REVISION-remix1=	1
REVISION-remix2=	1
REVISION-remix3=	1
REVISION-threedomusic=	1
REVISION-voice=		1
EXTRACT_ONLY=		${PDIST}
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sc2/}

HOMEPAGE=		http://sc2.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# code GPLv2+, data Creative Commons Attribution-NonCommercial-ShareAlike 2.5
# NC does not apply to unmodified uqm distributions, but mark it to be safe
PERMIT_PACKAGE_CDROM=	NonCommercial
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS-main=	audio/libmikmod \
			audio/tremor>=20120410 \
			devel/sdl-image
PKG_ARCH-content=	*
PKG_ARCH-remix1=	*
PKG_ARCH-remix2=	*
PKG_ARCH-remix3=	*
PKG_ARCH-threedomusic=	*
PKG_ARCH-voice=		*
RUN_DEPENDS=		${PKGNAME-main}v0:games/uqm
RUN_DEPENDS-content=
RUN_DEPENDS-main=	${PKGNAME-content}v0:games/uqm,-content
WANTLIB-main=		c m pthread z SDL mikmod>=2.4 vorbisidec>=3 \
			SDL_image

NO_TEST=	Yes
USE_GMAKE=	Yes

PSEUDO_FLAVORS=	no_remix1 no_remix2 no_remix3 no_threedomusic no_voice
FLAVOR?=

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

do-configure:
.if ${PROPERTIES:Mle}
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/uqm/content/packages
	${INSTALL_DATA_DIR} ${PREFIX}/share/uqm/content/addons
	${INSTALL_DATA} ${WRKBUILD}/doc/users/manual.txt \
		${PREFIX}/share/doc/uqm
	${INSTALL_DATA} ${WRKBUILD}/content/version \
		${PREFIX}/share/uqm/content
	${INSTALL_DATA} ${FULLDISTDIR}/${CDIST} \
		${PREFIX}/share/uqm/content/packages
.if ${BUILD_PACKAGES:M-remix1}
	${INSTALL_DATA} ${FULLDISTDIR}/${RM1DIST} \
		${PREFIX}/share/uqm/content/addons
.endif
.if ${BUILD_PACKAGES:M-remix2}
	${INSTALL_DATA} ${FULLDISTDIR}/${RM2DIST} \
		${PREFIX}/share/uqm/content/addons
.endif
.if ${BUILD_PACKAGES:M-remix3}
	${INSTALL_DATA} ${FULLDISTDIR}/${RM3DIST} \
		${PREFIX}/share/uqm/content/addons
.endif
.if ${BUILD_PACKAGES:M-threedomusic}
	${INSTALL_DATA} ${FULLDISTDIR}/${MDIST} \
		${PREFIX}/share/uqm/content/addons
.endif
.if ${BUILD_PACKAGES:M-voice}
	${INSTALL_DATA} ${FULLDISTDIR}/${VDIST} \
		${PREFIX}/share/uqm/content/addons
.endif
	${INSTALL_PROGRAM} ${WRKBUILD}/uqm ${PREFIX}/bin

.include <bsd.port.mk>
