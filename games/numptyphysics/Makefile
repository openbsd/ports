# $OpenBSD: Makefile,v 1.24 2013/06/04 18:41:43 naddy Exp $

COMMENT-main =		physics-based drawing puzzle game
COMMENT-npcomplete =	extra levels for physics-based drawing puzzle game

DISTNAME =		numptyphysics-0.3.r20100916
PKGNAME-main =		${DISTNAME}
PKGNAME-npcomplete =	npcomplete-0.0.r20100124

MULTI_PACKAGES =	-main -npcomplete

EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	games

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://numptyphysics.garage.maemo.org/

MASTER_SITES =	http://spacehopper.org/mirrors/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		npcomplete-0.0.r20100124.tar.bz2

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		SDL SDL_image SDL_ttf X11 c m \
			pthread stdc++ z

RUN_DEPENDS-main =	devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS-main =	devel/sdl \
			devel/sdl-image \
			devel/sdl-ttf

RUN_DEPENDS-npcomplete =${FULLPKGPATH-main}

CONFIGURE_STYLE =	autoconf automake no-autoheader
AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

CPPFLAGS =	-I${LOCALBASE}/include \
		-I${X11BASE}/include
LDFLAGS =	-pthread \
		-L${LOCALBASE}/lib \
		-L${X11BASE}/lib
CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"
CONFIGURE_ARGS =--disable-hildon

WRKDIST =	${WRKDIR}/numptyphysics

post-patch:
	@cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal

pre-configure:
	@cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} /bin/sh ./autogen.sh
	@${SUBST_CMD} ${WRKSRC}/Config.h

post-install:
	${INSTALL_DATA} ${WRKDIR}/npcomplete/*.nph \
	    ${PREFIX}/share/numptyphysics/

.include <bsd.port.mk>
