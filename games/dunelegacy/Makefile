# $OpenBSD: Makefile,v 1.6 2017/07/26 22:45:20 sthen Exp $

COMMENT =		improved opensource version of Dune 2

DISTNAME =		dunelegacy-0.96.3-src
PKGNAME =		${DISTNAME:S/-src//}
REVISION =		1

CATEGORIES =		games x11

HOMEPAGE =		http://dunelegacy.sourceforge.net/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2/CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL SDL_mixer c enet m pthread ${COMPILER_LIBCXX}

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=dunelegacy/}
MASTER_SITES0 =		http://www.myway.de/richieland/
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/sdl-mixer \
			net/enet
RUN_DEPENDS = 		devel/desktop-file-utils
TEST_DEPENDS = 		devel/cppunit

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
# XXX clang requires c++11 for functional to be complete (in particular 
# std::bind) but this turns on narrowing errors, which break dunelegacy
CXXFLAGS += -std=c++11 -Wno-c++11-narrowing
.endif

MAKE_FLAGS +=		CXXFLAGS="${CXXFLAGS} -DXTHREADS"

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV += 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL \
			-I${X11BASE}/include"

WRKDIST =		${WRKDIR}/${PKGNAME}

post-extract:
	rm -r ${WRKSRC}/include/enet

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dunelegacy/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dunelegacy/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/dunelegacy.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/dunelegacy.png ${PREFIX}/share/pixmaps/dunelegacy.png

.include <bsd.port.mk>
