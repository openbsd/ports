# $OpenBSD: Makefile,v 1.3 2003/07/25 11:04:30 jolan Exp $
ONLY_FOR_ARCHS=	i386 macppc

COMMENT=		"ur-quan masters: sdl port of star control 2"
COMMENT-content=	"ur-quan masters: minimal content"
COMMENT-3domusic=	"ur-quan masters: 3DO music content"
COMMENT-voice=		"ur-quan masters: speech content"

VER=			0.2
DISTNAME=		uqm-${VER}-source
PDIST=			${DISTNAME}.tgz
CDIST=			uqm-${VER}-content.zip
MDIST=			uqm-${VER}-3domusic.zip
VDIST=			uqm-${VER}-voice.zip
DISTFILES=		${PDIST} ${CDIST}
CATEGORIES=		games x11
PKGNAME=		uqm-${VER}p0
PKGNAME-3domusic=	uqm-3domusic-${VER}
PKGNAME-content=	uqm-content-${VER}
PKGNAME-voice=		uqm-voice-${VER}
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sc2/}

HOMEPAGE=	http://sc2.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	"Unresolved licensing issues"
PERMIT_PACKAGE_FTP=	"Unresolved licensing issues"
PERMIT_DISTFILES_CDROM=	"Unresolved licensing issues"
PERMIT_DISTFILES_FTP=	"Unresolved licensing issues"

LIB_DEPENDS=	SDL_image::devel/sdl-image \
		vorbis.0,vorbisfile.1::audio/libvorbis

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

PSEUDO_FLAVORS=	no_3domusic no_voice
FLAVOR?=
MULTI_PACKAGES=	-content
.if !${FLAVOR:L:Mno_3domusic}
DISTFILES+=	${MDIST}
MULTI_PACKAGES+=-3domusic
.endif
.if !${FLAVOR:L:Mno_voice}
DISTFILES+=	${VDIST}
MULTI_PACKAGES+=-voice
.endif

SUBPACKAGE?=

do-configure:
.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "i386" || \
     ${MACHINE_ARCH} == "vax")
	@sed -e "s|@PREFIX@|${PREFIX}|g" ${FILESDIR}/config.h-lilendian \
		> ${WRKSRC}/src/config.h
.else
	@sed -e "s|@PREFIX@|${PREFIX}|g" ${FILESDIR}/config.h-bigendian \
		> ${WRKSRC}/src/config.h
.endif
	@sed -e "s|@CC@|${CC}|g ; s|@CFLAGS@|${CFLAGS}|g ; \
		s|@LOCALBASE@|${LOCALBASE}|g ; s|@PREFIX@|${PREFIX}|g ; \
		s|@X11BASE@|${X11BASE}|g" ${FILESDIR}/build.vars \
		> ${WRKSRC}/build.vars

do-build:
	cd ${WRKBUILD}; ./build.sh uqm

pre-install:
	@mkdir -p ${WRKDIST}/content
.for R in androsyn arilou blackurq chenjesu chmmr druuge human ilwrath \
	melnorme mmrnmhrm mycon orz pkunk shofixti slylandr spathi supox \
	syreen thradd umgah urquan utwig vux yehat zoqfot
	@mv ${WRKDIR}/${R} ${WRKDIST}/content
	@mv ${WRKDIR}/${R}.shp ${WRKDIST}/content
.endfor
.for E in comm ipanims lastbat{,.sc2} lbm melee probe{,.sc2} sis{_ship,.dat} \
	slides starcon{.key,.ndx,.txt} version
	@mv ${WRKDIR}/${E} ${WRKDIST}/content
.endfor
	@mv ${WRKDIR}/*.con ${WRKDIST}/content

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uqm
	${INSTALL_DATA_DIR} ${PREFIX}/share/uqm
	${INSTALL_DATA} ${WRKSRC}/doc/users/manual.txt ${PREFIX}/share/doc/uqm
	${INSTALL_PROGRAM} ${WRKSRC}/uqm ${PREFIX}/bin
	@cp -R ${WRKDIST}/content/* ${PREFIX}/share/uqm

post-install:
	@find ${PREFIX}/share/uqm -type f -print0 | xargs -0 chmod 444

.include <bsd.port.mk>
