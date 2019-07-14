# $OpenBSD: Makefile,v 1.45 2019/07/14 00:39:37 naddy Exp $

COMMENT-main=		ur-quan masters: space exploration game with battles
COMMENT-content=	ur-quan masters: game content
COMMENT-remix1=		ur-quan masters: remix pack number one
COMMENT-remix2=		ur-quan masters: remix pack number two
COMMENT-remix3=		ur-quan masters: remix pack number three
COMMENT-remix4=		ur-quan masters: remix pack number four
COMMENT-threedomusic=	ur-quan masters: 3DO music content
COMMENT-voice=		ur-quan masters: speech content

V =			0.7.0
EPOCH=			0# N.B. in RUN_DEPENDS
DISTNAME =		uqm-$V
CATEGORIES=		games x11
uqm_source =		uqm-$V-source.tgz
uqm_packages =		uqm-$V-content.uqm
uqm_addons =		uqm-$V-3domusic.uqm \
			uqm-$V-voice.uqm \
			uqm-remix-disc1.uqm \
			uqm-remix-disc2.uqm \
			uqm-remix-disc3.uqm \
			uqm-remix-disc4.uqm
DISTFILES =		${uqm_source} \
			${uqm_packages} \
			${uqm_addons}
DIST_SUBDIR=		uqm
CATEGORIES=		games x11
PKGNAME-main =		uqm-$V
PKGNAME-content =	uqm-content-$V
PKGNAME-remix1 =	uqm-remix1-$V
PKGNAME-remix2 =	uqm-remix2-$V
PKGNAME-remix3 =	uqm-remix3-$V
PKGNAME-remix4 =	uqm-remix4-$V
PKGNAME-threedomusic =	uqm-threedomusic-$V
PKGNAME-voice =		uqm-voice-$V
REVISION =		5
EXTRACT_ONLY =		${uqm_source}
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sc2/}

HOMEPAGE=		http://sc2.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# code GPLv2+, data Creative Commons Attribution-NonCommercial-ShareAlike 2.5
# NC does not apply to unmodified uqm distributions, but mark it to be safe
PERMIT_PACKAGE=	Yes

LIB_DEPENDS-main=	audio/libmikmod \
			audio/libvorbis \
			devel/sdl-image
PKG_ARCH-content=	*
PKG_ARCH-remix1=	*
PKG_ARCH-remix2=	*
PKG_ARCH-remix3=	*
PKG_ARCH-remix4=	*
PKG_ARCH-threedomusic=	*
PKG_ARCH-voice=		*
RUN_DEPENDS=		${PKGNAME-main}v0:games/uqm
RUN_DEPENDS-content=
RUN_DEPENDS-main=	${PKGNAME-content}v0:games/uqm,-content
WANTLIB-main=		c m pthread z SDL mikmod vorbisfile SDL_image

NO_TEST=	Yes
USE_GMAKE=	Yes

MULTI_PACKAGES =	-main \
			-content \
			-remix1 \
			-remix2 \
			-remix3 \
			-remix4 \
			-threedomusic \
			-voice

.include <bsd.port.arch.mk>

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
	${INSTALL_MAN} ${FILESDIR}/uqm.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKBUILD}/doc/users/manual.txt \
		${PREFIX}/share/doc/uqm
	${INSTALL_DATA} ${WRKBUILD}/content/version \
		${PREFIX}/share/uqm/content
	${INSTALL_PROGRAM} ${WRKBUILD}/uqm ${PREFIX}/bin
.for package in ${uqm_packages}
	${INSTALL_DATA} ${FULLDISTDIR}/${package} \
		${PREFIX}/share/uqm/content/packages
.endfor
.for addon in ${uqm_addons}
	${INSTALL_DATA_DIR} ${PREFIX}/share/uqm/content/addons
	${INSTALL_DATA} ${FULLDISTDIR}/${addon} \
		${PREFIX}/share/uqm/content/addons
.endfor

.include <bsd.port.mk>
