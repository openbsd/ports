COMMENT =	binary newsreader supporting NZB files

DIST_TUPLE +=	github nzbgetcom nzbget v25.3 .
DIST_TUPLE +=	github nzbgetcom par2cmdline-turbo v1.3.0-20250808 par2cmdline-turbo

CATEGORIES =	news

HOMEPAGE =	https://nzbget.com/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} boost_atomic-mt boost_container-mt
WANTLIB +=	boost_filesystem-mt boost_json-mt boost_system-mt c
WANTLIB +=	crypto curses form m ssl xml2 z

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake
.if DEBUG
MODCMAKE_DEBUG =	Yes
.endif

RUN_DEPENDS =	archivers/p7zip \
		archivers/unrar
LIB_DEPENDS =	devel/boost \
		textproc/libxml
TEST_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_ARGS =	-DCURSES_INCLUDE_PATH=/usr/include \
			-DENABLE_TESTS=ON

post-install:
	${SUBST_CMD} ${WRKBUILD}/nzbget.conf
	${INSTALL_DATA} ${WRKBUILD}/nzbget.conf ${PREFIX}/share/nzbget/

.include <bsd.port.mk>
