# $OpenBSD: Makefile,v 1.1.1.1 2010/10/25 12:12:05 edd Exp $

COMMENT =		commander keen clone
DISTNAME =		clonekeen-src-84
PKGNAME =		clonekeen-8.4
CATEGORIES =		games

WRKDIST = 		${WRKDIR}/keen
WRKBUILD =		${WRKDIST}/src

HOMEPAGE =		http://clonekeen.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

LIB_DEPENDS = 		::devel/sdl
WANTLIB =		SDL c m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=clonekeen/}

USE_X11 =		Yes
NO_REGRESS =		Yes

# LDFLAGS only used at link time
CPPFLAGS = 	-I${LOCALBASE}/include
LDFLAGS =	-L${LOCALBASE}/lib -pthread
MAKE_ENV =	CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}" CFLAGS="${CFLAGS}"

do-install:
	cp -r ${WRKSRC}/bin ${PREFIX}/share/clonekeen
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/clonekeen
	${INSTALL_PROGRAM} ${WRKBUILD}/keen ${PREFIX}/share/clonekeen
	${SUBST_CMD} -c -o root -g bin ${FILESDIR}/keen ${PREFIX}/bin/keen
	chmod 755 ${PREFIX}/bin/keen
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clonekeen
	${SUBST_CMD} -c -o root -g bin ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/clonekeen/README.OpenBSD
	chmod 444 ${PREFIX}/share/doc/clonekeen/README.OpenBSD

.include <bsd.port.mk>
