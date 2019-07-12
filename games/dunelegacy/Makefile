# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:16 sthen Exp $

COMMENT =		improved opensource version of Dune 2

DISTNAME =		dunelegacy-0.96.4-src
PKGNAME =		${DISTNAME:S/-src//}
REVISION =		1

CATEGORIES =		games x11

HOMEPAGE =		http://dunelegacy.sourceforge.net/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2/CC-BY-SA
PERMIT_PACKAGE =	Yes

WANTLIB =		SDL2 SDL2_mixer c enet m pthread ${COMPILER_LIBCXX}

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=dunelegacy/}
EXTRACT_SUFX =		.tar.bz2

COMPILER = 		base-clang ports-gcc

LIB_DEPENDS =		devel/sdl2-mixer \
			net/enet
RUN_DEPENDS = 		devel/desktop-file-utils
TEST_DEPENDS = 		devel/cppunit

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
# XXX clang requires c++11 for functional to be complete (in particular
# std::bind) but this turns on narrowing errors, which break dunelegacy
CXXFLAGS += -std=c++11 -Wno-c++11-narrowing
.else
CXXFLAGS += -std=c++11
.endif

MAKE_FLAGS +=		CXXFLAGS="${CXXFLAGS} -DXTHREADS"

SEPARATE_BUILD = 	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV += 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL2 \
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
