# $OpenBSD: Makefile,v 1.1.1.1 2016/03/24 03:37:25 jsg Exp $

COMMENT=	SDL Quake port
CATEGORIES=	games
DISTNAME=	quakespasm-0.91.0
EXTRACT_SUFX=	.tgz
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quakespasm/}
HOMEPAGE=	http://quakespasm.sourceforge.net

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL SDL c m mad ogg pthread vorbis vorbisfile

LIB_DEPENDS=	audio/libmad \
		audio/libvorbis \
		devel/sdl

WRKDIST=	${WRKDIR}/${DISTNAME}/Quake
USE_GMAKE=	Yes
ALL_TARGET=	release

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
