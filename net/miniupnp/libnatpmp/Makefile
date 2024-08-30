COMMENT =	NAT Port Mapping Protocol client library

DIST_TUPLE =	github miniupnp libnatpmp 8257134a5dcb077e40db1946554d676e444406e4 .
PKGNAME =	libnatpmp-20240803

SHARED_LIBS =	natpmp 0.1

WANTLIB =	c

CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=TRUE

MODULES =	devel/cmake

post-install:
	${INSTALL_MAN} ${WRKSRC}/natpmpc.1 ${PREFIX}/man/man1/natpmpc.1

.include <bsd.port.mk>
