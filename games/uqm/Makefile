# $OpenBSD: Makefile,v 1.18 2006/05/12 01:27:42 jolan Exp $
# XXX hardcoded endian list

COMMENT=		"ur-quan masters: sdl port of star control 2"
COMMENT-remix1=		"ur-quan masters: remix pack number one"
COMMENT-remix2=		"ur-quan masters: remix pack number two"
COMMENT-remix3=		"ur-quan masters: remix pack number three"
COMMENT-threedomusic=	"ur-quan masters: 3DO music content"
COMMENT-voice=		"ur-quan masters: speech content"

DATE=			20060507
VER=			0.5.0
DISTNAME=		uqm-${DATE}
CATEGORIES=		games x11
PDIST=			${DISTNAME}.tar.gz
CDIST=			uqm-${VER}-content.uqm
CDIST2=			uqm-${DATE}-content.zip
MDIST=			uqm-${VER}-3domusic.uqm
VDIST=			uqm-${VER}-voice.uqm
RM1DIST=		uqm-remix-pack1.zip
RM2DIST=		uqm-remix-pack2.zip
RM3DIST=		uqm-remix-pack3.zip
DISTFILES=		${PDIST}:0 ${CDIST} ${CDIST2}:0
SUPDISTFILES=		${MDIST} ${VDIST} ${RM1DIST} ${RM2DIST} ${RM3DIST}
DIST_SUBDIR=		uqm
CATEGORIES=		games x11
PKGNAME-remix1=		uqm-remix1-${VER}
PKGNAME-remix2=		uqm-remix2-${VER}
PKGNAME-remix3=		uqm-remix3-${VER}
PKGNAME-threedomusic=	uqm-threedomusic-${VER}
PKGNAME-voice=		uqm-voice-${VER}
EXTRACT_ONLY=		${PDIST}
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sc2/}
MASTER_SITES0=		http://mirrors.protection.cx/~jolan/

HOMEPAGE=	http://sc2.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	"content must accompany distribution of ur-quan masters"
PERMIT_PACKAGE_FTP=	"content must accompany distribution of ur-quan masters"
PERMIT_DISTFILES_CDROM=	"content must accompany distribution of ur-quan masters"
PERMIT_DISTFILES_FTP=	"content must accompany distribution of ur-quan masters"

LIB_DEPENDS=	vorbisidec.1::audio/tremor \
		SDL_image::devel/sdl-image
WANTLIB=	X11 Xext c m pthread usbhid z \
		SDL

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
	@sed -e "s|@CC@|${CC}|g ; s|@CFLAGS@|${CFLAGS}|g ; \
		s|@CFLAGS_TREMOR@|-DOVCODEC_TREMOR|g ; \
		s|@LOCALBASE@|${LOCALBASE}|g ; s|@PREFIX@|${PREFIX}|g ; \
		s|@SOUNDLIB@|-lvorbisidec|g ; \
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
	${INSTALL_DATA} ${FULLDISTDIR}/${CDIST2} \
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
