# $OpenBSD: Makefile,v 1.1.1.1 2020/08/30 10:04:59 bentley Exp $

COMMENT =		ur-quan masters: game of space exploration and battles

DISTNAME =		uqm-$V-source
PKGNAME =		uqm-$V
V =			0.7.0
REVISION =		6

CATEGORIES =		games x11

HOMEPAGE =		http://sc2.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread z SDL mikmod vorbisfile SDL_image

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE=sc2/}

EXTRACT_SUFX =		.tgz

DIST_SUBDIR =		uqm

LIB_DEPENDS =		audio/libmikmod \
			audio/libvorbis \
			devel/sdl-image

RUN_DEPENDS =		games/uqm/data/content


USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/uqm-$V

DEBUG_PACKAGES =	${BUILD_PACKAGES}

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
	${INSTALL_MAN} ${FILESDIR}/uqm.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKBUILD}/doc/users/manual.txt \
		${PREFIX}/share/doc/uqm
	${INSTALL_PROGRAM} ${WRKBUILD}/uqm ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/uqm/content
	${INSTALL_DATA} ${WRKSRC}/content/version ${PREFIX}/share/uqm/content

.include <bsd.port.mk>
