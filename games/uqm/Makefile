# $OpenBSD: Makefile,v 1.17 2006/03/21 04:00:09 jsg Exp $
# XXX hardcoded endian list

# 64-bit issues, unaligned memory access
ONLY_FOR_ARCHS=	arm i386 powerpc

COMMENT=		"ur-quan masters: sdl port of star control 2"
COMMENT-remix1=		"ur-quan masters: remix pack number one"
COMMENT-remix2=		"ur-quan masters: remix pack number two"
COMMENT-remix3=		"ur-quan masters: remix pack number three"
COMMENT-threedomusic=	"ur-quan masters: 3DO music content"
COMMENT-voice=		"ur-quan masters: speech content"

VER=			0.5.0
DISTNAME=		uqm-${VER}-source
CATEGORIES=		games x11
PDIST=			${DISTNAME}.tar.gz
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
PKGNAME=		uqm-${VER}
PKGNAME-remix1=		uqm-remix1-${VER}
PKGNAME-remix2=		uqm-remix2-${VER}
PKGNAME-remix3=		uqm-remix3-${VER}
PKGNAME-threedomusic=	uqm-threedomusic-${VER}
PKGNAME-voice=		uqm-voice-${VER}
EXTRACT_ONLY=		${PDIST}
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sc2/}

HOMEPAGE=	http://sc2.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	"Unresolved licensing issues"
PERMIT_PACKAGE_FTP=	"Unresolved licensing issues"
PERMIT_DISTFILES_CDROM=	"Unresolved licensing issues"
PERMIT_DISTFILES_FTP=	"Unresolved licensing issues"

LIB_DEPENDS=	SDL_image::devel/sdl-image
WANTLIB=	X11 Xext c m pthread usbhid z \
		SDL

.if ${MACHINE_ARCH} == "arm"
LIB_DEPENDS+=	vorbisidec.1::audio/tremor
.else
LIB_DEPENDS+=	vorbis.0,vorbisfile.1::audio/libvorbis
WANTLIB+=	ogg
.endif

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

PSEUDO_FLAVORS=	remix1 remix2 remix3 threedomusic voice
FLAVOR?=

MULTI_PACKAGES=
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

SUBPACKAGE?=

.if defined(PACKAGING)
. if !empty(SUBPACKAGE)
WANTLIB=
. endif
. if ${SUBPACKAGE} == "-remix1"
PKG_ARCH=	*
RUN_DEPENDS=	::games/uqm
. endif
. if ${SUBPACKAGE} == "-remix2"
PKG_ARCH=	*
RUN_DEPENDS=    ::games/uqm
. endif
. if ${SUBPACKAGE} == "-remix3"
PKG_ARCH=	*
RUN_DEPENDS=	::games/uqm
. endif
. if ${SUBPACKAGE} == "-threedomusic"
PKG_ARCH=	*
RUN_DEPENDS=	::games/uqm
. endif
. if ${SUBPACKAGE} == "-voice"
PKG_ARCH=	*
RUN_DEPENDS=	::games/uqm
. endif
.endif

WRKDIST=	${WRKDIR}/${DISTNAME:S/-source//}

do-configure:
.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
	${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "vax")
	@sed -e "s|@PREFIX@|${PREFIX}|g ; s|@ENDIAN@|undef|g" \
		${FILESDIR}/config_unix.h > ${WRKSRC}/src/config_unix.h
.else
	@sed -e "s|@PREFIX@|${PREFIX}|g ; s|@ENDIAN@|define|g" \
		${FILESDIR}/config_unix.h > ${WRKSRC}/src/config_unix.h
.endif
.if ${MACHINE_ARCH} == "arm"
	@sed -e "s|@CC@|${CC}|g ; s|@CFLAGS@|${CFLAGS}|g ; \
		s|@CFLAGS_TREMOR@|-DOVCODEC_TREMOR|g ; \
		s|@LOCALBASE@|${LOCALBASE}|g ; s|@PREFIX@|${PREFIX}|g ; \
		s|@SOUNDLIB@|-lvorbisidec|g ; \
		s|@X11BASE@|${X11BASE}|g" ${FILESDIR}/build.vars \
		> ${WRKSRC}/build.vars
.else
	@sed -e "s|@CC@|${CC}|g ; s|@CFLAGS@|${CFLAGS}|g ; \
		s|@CFLAGS_TREMOR@||g ; \
		s|@LOCALBASE@|${LOCALBASE}|g ; s|@PREFIX@|${PREFIX}|g ; \
		s|@SOUNDLIB@|-lvorbisfile -lvorbis -logg|g ; \
		s|@X11BASE@|${X11BASE}|g" ${FILESDIR}/build.vars \
		> ${WRKSRC}/build.vars
.endif

do-build:
	cd ${WRKBUILD}; ./build.sh uqm

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
