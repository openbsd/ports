COMMENT =	DNS query performance tester from BIND 9

C =		038c33d9506821a1397c3b590bdc6a2ea737394c
DISTNAME =	queryperf-$C
PKGNAME =	queryperf-20180511
REVISION =	0

CATEGORIES =	net benchmarks

MASTER_SITES +=	https://gitlab.isc.org/isc-projects/queryperf/-/archive/$C/

HOMEPAGE =	https://gitlab.isc.org/isc-projects/queryperf

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		c m

CONFIGURE_STYLE =	gnu
ALL_TARGET =		queryperf
NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/queryperf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/queryperf
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/queryperf
	${INSTALL_DATA} ${WRKSRC}/utils/gen-data-queryperf.py \
	    ${PREFIX}/share/doc/queryperf

.include <bsd.port.mk>
