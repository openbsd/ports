# $OpenBSD: Makefile,v 1.9 2019/07/12 21:02:20 sthen Exp $

COMMENT=	SDL Quake port
CATEGORIES=	games
DISTNAME=	quakespasm-0.93.1
REVISION=	2
EXTRACT_SUFX=	.tgz
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quakespasm/}
HOMEPAGE=	http://quakespasm.sourceforge.net

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL SDL2 c m mad ogg pthread vorbis vorbisfile

LIB_DEPENDS=	audio/libmad \
		audio/libvorbis \
		devel/sdl2

WRKDIST=	${WRKDIR}/${DISTNAME}/Quake
USE_GMAKE=	Yes
ALL_TARGET=	release
MAKE_FLAGS=	USE_SDL2=1 DO_USERDIRS=1

DOCS=	Quakespasm.html Quakespasm-Music.txt Quakespasm.txt

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/quakespasm ${PREFIX}/libexec
	${SUBST_CMD} -m 555 -c ${FILESDIR}/quakespasm.sh ${WRKSRC}/quakespasm.sh
	${INSTALL_SCRIPT} ${WRKSRC}/quakespasm.sh ${PREFIX}/bin/quakespasm
	${INSTALL_DATA_DIR} ${PREFIX}/share/quakespasm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/quakespasm
.for DOC in ${DOCS}
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/${DOC} \
	    ${PREFIX}/share/doc/quakespasm/
.endfor

.include <bsd.port.mk>
