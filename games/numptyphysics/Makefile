# $OpenBSD: Makefile,v 1.12 2010/04/12 09:33:44 dcoppa Exp $

COMMENT-main =		physics-based drawing puzzle game
COMMENT-npcomplete =	extra levels for physics-based drawing puzzle game

DISTNAME =		numptyphysics-0.3.r20090104
PKGNAME-main =		${DISTNAME}p6
PKGNAME-npcomplete =	npcomplete-0.0.r20090116p3

MULTI_PACKAGES =	-main -npcomplete

EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	games

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://numptyphysics.garage.maemo.org/

MASTER_SITES =	http://mirror.amdmi3.ru/distfiles/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		npcomplete-0.0.r20090116.tar.bz2

BROKEN-sparc64 =SIGBUS on sparc64 when starting

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB-main =		X11 c m pthread stdc++ z

RUN_DEPENDS-main =	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-main =	SDL::devel/sdl \
			SDL_image::devel/sdl-image

RUN_DEPENDS-npcomplete =::${FULLPKGPATH-main}

CONFIGURE_STYLE =	autoconf automake no-autoheader
AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

CPPFLAGS =	-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include
LDFLAGS =	-pthread \
		-L${LOCALBASE}/lib \
		-L${X11BASE}/lib
CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"
CONFIGURE_ARGS =--disable-hildon

WRKDIST =	${WRKDIR}/numptyphysics

pre-patch:
	cd ${WRKSRC}/Box2D; perl -i -pe 's/\r$$//' `find . -type f`

post-patch:
	@cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal

pre-configure:
	@cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ${SH} ./autogen.sh
	@${SUBST_CMD} ${WRKSRC}/Config.h

post-install:
	${INSTALL_DATA} ${WRKDIR}/npcomplete/*.nph \
	    ${PREFIX}/share/numptyphysics/

.include <bsd.port.mk>
