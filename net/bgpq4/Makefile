COMMENT=	generate access/prefix lists for BGP config

DIST_TUPLE=	github bgp bgpq4 1.13 .

CATEGORIES=	net

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

# C11
COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16

DEBUG_PACKAGES=	${BUILD_PACKAGES}
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bgpq4 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgpq4.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
