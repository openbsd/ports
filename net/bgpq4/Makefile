COMMENT =	generate access/prefix lists for BGP config (fork of bgpq3)

GH_ACCOUNT =		bgp
GH_PROJECT =		bgpq4
GH_TAGNAME =		1.4

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# C11
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
SEPARATE_BUILD =	Yes
DEBUG_PACKAGES =	${BUILD_PACKAGES}

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bgpq4 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgpq4.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
