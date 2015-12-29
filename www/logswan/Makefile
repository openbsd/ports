# $OpenBSD: Makefile,v 1.2 2015/12/29 12:54:11 jasper Exp $

COMMENT =	web log analyzer using probabilistic data structures
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
CATEGORIES =	www

HOMEPAGE =	http://www.logswan.org

MAINTAINER =	Frederic Cambus <fcambus@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =	fcambus
GH_PROJECT =	logswan
GH_TAGNAME =	1.02

WANTLIB =	c m jansson GeoIP

MODULES =	devel/cmake
NO_TEST =	Yes

LIB_DEPENDS =	devel/jansson \
		net/GeoIP

pre-configure:
	sed -i s,/var/db/GeoIP,${LOCALSTATEDIR}/db/GeoIP, \
	    ${WRKSRC}/src/logswan.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/logswan
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/logswan

.include <bsd.port.mk>
