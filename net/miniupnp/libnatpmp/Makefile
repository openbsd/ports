COMMENT =	NAT Port Mapping Protocol client library

DIST_TUPLE =	github miniupnp libnatpmp f2433bec24ca3d3f22a8a7840728a3ac177f94ba .
DISTNAME =	libnatpmp-20240116
WRKDIST =	${WRKDIR}/libnatpmp-${DIST_TUPLE:M[0-9a-f]*}

SHARED_LIBS =	natpmp 0.1

WANTLIB =	c

CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=TRUE

MODULES =	devel/cmake

post-install:
	#${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/natpmpc.1 ${PREFIX}/man/man1/natpmpc.1

.include <bsd.port.mk>
