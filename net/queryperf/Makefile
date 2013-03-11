# $OpenBSD: Makefile,v 1.7 2013/03/11 11:35:55 espie Exp $

COMMENT =	DNS query performance tester from BIND 9

V =		9.9.1-P1
DISTNAME =	bind-$V
PKGNAME =	queryperf-${V:S/-P/pl/}
CATEGORIES =	net benchmarks

MASTER_SITES +=	${MASTER_SITE_ISC:=bind9/$V/}

HOMEPAGE =	http://www.isc.org/products/BIND/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

WRKSRC =		${WRKDIST}/contrib/queryperf
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
