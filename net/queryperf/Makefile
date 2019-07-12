# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:47 sthen Exp $

COMMENT =	DNS query performance tester from BIND 9

V =		9.11.2
DISTNAME =	bind-$V
PKGNAME =	queryperf-${V:S/-P/pl/}
CATEGORIES =	net benchmarks

MASTER_SITES +=	${MASTER_SITE_ISC:=bind9/$V/}

HOMEPAGE =	http://www.isc.org/products/BIND/

# MPL 2.0
PERMIT_PACKAGE =	Yes

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
