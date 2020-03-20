# $OpenBSD: Makefile,v 1.23 2020/03/20 16:44:23 naddy Exp $

ONLY_FOR_ARCHS =	amd64 i386 macppc

BROKEN-i386 =		code/qcommon/vm_x86.c:(.text+0x18): undefined reference to `callMask'

COMMENT-main =		OpenArena client
COMMENT-server =	OpenArena server
COMMENT-data =		OpenArena data for client/server

MULTI_PACKAGES =	-main -server -data

CATEGORIES =		games x11

V =			0.8.8
E_V =			${V}# 	engine version

PKGNAME =		openarena-${V}
PKGNAME-main =		openarena-${V}
PKGNAME-server =	openarena-server-${V}
PKGNAME-data =		openarena-data-${V}

REVISION-main =		1
REVISION-server =	0

PKG_ARCH-data = 	*

DISTNAME =		openarena-${V}
DISTFILES =		${DISTNAME}.zip openarena-engine-source-${E_V}.tar.bz2:0

HOMEPAGE =		http://www.openarena.ws/
MS_PREFIX =		https://download.tuxfamily.org/openarena/rel/
MASTER_SITES =		${MS_PREFIX}${V:S/.//g}/ \
			${MS_PREFIX}${E_V:S/.//g}/source/
MASTER_SITES0 =		http://files.poulsander.com/~poul19/public_files/oa/dev088/ \
			http://openbsd.fi/distfiles/

# GPLv2 but contains software with other (free) licenses as well
PERMIT_PACKAGE =	Yes

WANTLIB-main =		GL c m pthread sndio ogg>=5 SDL>=7 vorbis>=7 \
			vorbisfile>=5 curl
WANTLIB-server =	c m

LIB_DEPENDS-main =	audio/libogg \
			audio/libvorbis \
			devel/sdl \
			net/curl
RUN_DEPENDS-main =	${BASE_PKGPATH},-data
RUN_DEPENDS-server =	${BASE_PKGPATH},-data

USE_GMAKE =		Yes
MAKE_FLAGS =		USE_OPENAL=0 \
			FULLBINEXT='' \
			V=1 \
			DEFAULT_BASEDIR=${LOCALBASE}/share/openarena

.if ${MACHINE_ARCH} == "powerpc"
MAKE_FLAGS += 		ARCH=ppc \
			COMPILE_ARCH=ppc
.endif

.if ${MACHINE_ARCH} == "i386"
MAKE_FLAGS +=		PIE_CFLAGS=-fno-pie PIE_LDFLAGS=-nopie
.endif

NO_TEST =		Yes
WRKDIST =		${WRKDIR}/openarena-engine-source-${E_V}
ALL_TARGET =		release

post-extract:
	find ${WRKDIR} -name '*.orig' -delete
	mkdir ${WRKSRC}/code/sndio
	cp ${FILESDIR}/snd_sndio.c ${WRKSRC}/code/sndio

do-install:
	${INSTALL_PROGRAM} \
		${WRKDIST}/build/release-openbsd/openarena-* \
		${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/openarena/baseoa
	${INSTALL_DATA_DIR} ${PREFIX}/share/openarena/missionpack
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/openarena
	${INSTALL_DATA} \
		${WRKDIR}/openarena-${E_V}/README \
		${WRKDIR}/openarena-${E_V}/COPYING \
		${WRKDIR}/openarena-${E_V}/CHANGES \
		${PREFIX}/share/doc/openarena/
	${INSTALL_DATA} ${WRKDIR}/openarena-${E_V}/baseoa/* \
		${PREFIX}/share/openarena/baseoa/
	${INSTALL_DATA} ${WRKDIR}/openarena-${E_V}/missionpack/* \
		${PREFIX}/share/openarena/missionpack/


.include <bsd.port.mk>
