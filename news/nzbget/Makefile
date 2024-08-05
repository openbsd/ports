COMMENT =	binary newsreader supporting NZB files

DIST_TUPLE =	github nzbgetcom nzbget v24.2 .

CATEGORIES =	news

HOMEPAGE =	https://nzbget.com/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} boost_container-mt boost_json-mt
WANTLIB +=	c crypto curses form m ssl xml2 z

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
TEST_DEPENDS =	archivers/unrar

# Network test (SystemInfoTest) fails with PORTS_PRIVSEP
CONFIGURE_ARGS =	-DENABLE_TESTS=ON

post-install:
	${SUBST_CMD} ${WRKSRC}/nzbget.conf
	${INSTALL_DATA} ${WRKSRC}/nzbget.conf ${PREFIX}/share/nzbget/

.include <bsd.port.mk>
