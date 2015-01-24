# $OpenBSD: Makefile,v 1.8 2015/01/24 12:20:38 schwarze Exp $

COMMENT =		multi-threaded HTTP benchmark and regression tester

DISTNAME =		siege-2.70
REVISION =		1

CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.joedog.org/index/siege-home

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto pthread ssl

# main distribution site is broken for EPSV/EPRT as of 20100915
MASTER_SITES =		http://spacehopper.org/mirrors/ \
			ftp://ftp.joedog.org/pub/siege/

MAKE_FLAGS =		localstatedir=${LOCALSTATEDIR}

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/log/siege
SYSCONFDIR=		${BASESYSCONFDIR}/siege

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/siege
	${INSTALL_DATA} ${WRKSRC}/doc/urls.txt ${WRKSRC}/doc/siegerc \
	    ${PREFIX}/share/examples/siege

.include <bsd.port.mk>
