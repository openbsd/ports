# $OpenBSD: Makefile,v 1.1.1.1 2009/04/09 00:19:14 sthen Exp $

COMMENT =		multi-threaded HTTP benchmark and regression tester

DISTNAME =		siege-2.67

CATEGORIES =		benchmarks www

HOMEPAGE =		http://www.joedog.org/index/siege-home

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c crypto pthread ssl

# main distribution site is broken for EPSV/EPRT as of 20090409
MASTER_SITES =		http://spacehopper.org/mirrors/ \
			ftp://ftp.joedog.org/pub/siege/

MAKE_FLAGS =		localstatedir='/var/log/siege'

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--localstatedir=/var/log/siege \
			--sysconfdir=${SYSCONFDIR}/siege

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/siege
	${INSTALL_DATA} ${WRKSRC}/doc/urls.txt ${WRKSRC}/doc/siegerc \
	    ${PREFIX}/share/examples/siege

.include <bsd.port.mk>
