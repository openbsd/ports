# $OpenBSD: Makefile,v 1.1.1.1 2008/10/27 13:29:02 weerd Exp $

COMMENT-main=	OpenArena client
COMMENT-server=	OpenArena server
COMMENT-data=	OpenArena data for client/server

MULTI_PACKAGES=	-main -server -data

CATEGORIES=	games x11

V=		0.8.0

PKGNAME=	openarena-$V
PKGNAME-main=	openarena-$V
PKGNAME-server=	openarena-server-$V
PKGNAME-data=	openarena-data-$V

DISTNAME=	oa${V:S/.//g}
DISTFILES=	${DISTNAME}.zip ioquake3svn1438.tar.bz2

MAINTAINER=	Antti Harri <iku@openbsd.fi>

HOMEPAGE=	http://www.openarena.ws/
MASTER_SITES=	http://download.tuxfamily.org/openarena/rel/080/ \
		http://openbsd.fi/distfiles/

# GPLv2 but contains software with other (free) licenses as well
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main=	GL c m pthread
WANTLIB-server=	c m

LIB_DEPENDS-main=	ogg.>=5::audio/libogg \
			SDL.>=7::devel/sdl \
			vorbis.>=6::audio/libvorbis \
			vorbisfile.>=5::audio/libvorbis
RUN_DEPENDS-main=	:openarena-data-$V:${BUILD_PKGPATH},-data
RUN_DEPENDS-server=	:openarena-data-$V:${BUILD_PKGPATH},-data

ALL_TARGET=	release
USE_GMAKE=	Yes
MAKE_FLAGS=	USE_OPENAL=0 \
		BINEXT='' \
		DEFAULT_BASEDIR=${LOCALBASE}/share/openarena

WRKDIST=	${WRKDIR}/ioquake3svn1438

post-extract:
	find ${WRKDIR} -name '*.orig' -print0 | xargs -0r rm -f

do-install:
	${INSTALL_PROGRAM} \
		${WRKDIST}/build/release-openbsd/openarena-* \
		${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/openarena/baseoa
	${INSTALL_DATA_DIR} ${PREFIX}/share/openarena/missionpack
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/openarena
	${INSTALL_DATA} \
		${WRKDIR}/openarena-$V/README \
		${WRKDIR}/openarena-$V/COPYING \
		${WRKDIR}/openarena-$V/CHANGES \
		${PREFIX}/share/doc/openarena/
	${INSTALL_DATA} ${WRKDIR}/openarena-$V/baseoa/* ${PREFIX}/share/openarena/baseoa/
	${INSTALL_DATA} ${WRKDIR}/openarena-$V/missionpack/* ${PREFIX}/share/openarena/missionpack/


.include <bsd.port.mk>
