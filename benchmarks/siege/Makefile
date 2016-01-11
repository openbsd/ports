# $OpenBSD: Makefile,v 1.10 2016/01/11 10:22:05 landry Exp $

COMMENT =		multi-threaded HTTP benchmark and regression tester

DISTNAME =		siege-3.1.3

CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.joedog.org/index/siege-home

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto pthread ssl

MASTER_SITES =		http://download.joedog.org/siege/

MAKE_FLAGS =		localstatedir=${LOCALSTATEDIR}

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/log/siege

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/siege
	${INSTALL_DATA} ${WRKSRC}/doc/urls.txt ${WRKSRC}/doc/siegerc \
	    ${PREFIX}/share/examples/siege

.include <bsd.port.mk>
