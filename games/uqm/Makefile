# $OpenBSD: Makefile,v 1.1.1.1 2003/04/11 09:12:52 wilfried Exp $
ONLY_FOR_ARCHS=	i386 macppc

COMMENT=	"ur-quan masters: sdl port of star control 2"

DISTNAME=	uqm-0.2-source
EXTRACT_SUFX=	.tgz
PKGNAME=	uqm-0.2
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sc2/}

HOMEPAGE=	http://sc2.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	SDL_image::devel/sdl-image \
		vorbis.0,vorbisfile.1::audio/libvorbis
RUN_DEPENDS=	:uqmcontent-*:games/uqmcontent

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

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
	cd ${WRKSRC}; ./build.sh uqm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uqm
	${INSTALL_DATA} ${WRKSRC}/doc/users/manual.txt ${PREFIX}/share/doc/uqm
	${INSTALL_PROGRAM} ${WRKSRC}/uqm ${PREFIX}/bin

.include <bsd.port.mk>
