# $OpenBSD: Makefile,v 1.13 2019/07/12 20:46:16 sthen Exp $

COMMENT =		commander keen clone
DISTNAME =		clonekeen-src-84
PKGNAME =		clonekeen-8.4
REVISION =		4
CATEGORIES =		games

WRKDIST = 		${WRKDIR}/keen
WRKBUILD =		${WRKDIST}/src

HOMEPAGE =		http://clonekeen.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

LIB_DEPENDS = 		devel/sdl
WANTLIB =		SDL c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=clonekeen/}

USE_X11 =		Yes
NO_TEST =		Yes

# LDFLAGS only used at link time
CPPFLAGS = 	-I${LOCALBASE}/include
LDFLAGS =	-L${LOCALBASE}/lib -pthread -lm
MAKE_ENV =	CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}" CFLAGS="${CFLAGS}"

do-install:
	cp -r ${WRKSRC}/bin ${PREFIX}/share/clonekeen
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/clonekeen
	${INSTALL_PROGRAM} ${WRKBUILD}/keen ${PREFIX}/share/clonekeen
	${SUBST_PROGRAM} ${FILESDIR}/keen ${PREFIX}/bin/keen

.include <bsd.port.mk>
