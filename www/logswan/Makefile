# $OpenBSD: Makefile,v 1.5 2016/01/11 13:56:28 jasper Exp $

COMMENT =	fast web log analyzer using probabilistic data structures

GH_ACCOUNT =	fcambus
GH_PROJECT =	logswan
GH_TAGNAME =	1.04
CATEGORIES =	www

HOMEPAGE =	http://www.logswan.org

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m jansson GeoIP

MODULES =	devel/cmake
NO_TEST =	Yes

LIB_DEPENDS =	devel/jansson \
		net/GeoIP

CONFIGURE_ARGS = -DGEOIPDIR=${LOCALSTATEDIR}/db/GeoIP

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/logswan
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/logswan

.include <bsd.port.mk>
