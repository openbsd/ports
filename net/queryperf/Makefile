# $OpenBSD: Makefile,v 1.2 2009/05/25 20:23:25 sthen Exp $

COMMENT =	DNS query performance tester from BIND 9

VERSION =	9.4.2
DISTNAME =	bind-${VERSION}
PKGNAME =	queryperf-${VERSION}p0
CATEGORIES =	net benchmarks

MASTER_SITES +=	ftp://ftp.isc.org/isc/bind9/${VERSION}/ \
		ftp://ftp.epix.net/pub/isc/bind9/${VERSION}/ \
		ftp://ftp.nominum.com/pub/isc/bind9/${VERSION}/ \
		ftp://ftp.sunet.se/pub/network/isc/bind9/${VERSION}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.isc.org/isc/bind9/${VERSION}/ \
		ftp://ftp.iij.ad.jp/pub/network/isc/bind9/${VERSION}/ \

HOMEPAGE =	http://www.isc.org/products/BIND/

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m

WRKSRC =		${WRKDIST}/contrib/queryperf
CONFIGURE_STYLE =	gnu
ALL_TARGET =		queryperf
NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/queryperf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/queryperf
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/queryperf
	${INSTALL_DATA} ${WRKSRC}/utils/gen-data-queryperf.py \
	    ${PREFIX}/share/doc/queryperf

.include <bsd.port.mk>
