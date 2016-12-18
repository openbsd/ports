# $OpenBSD: Makefile,v 1.10 2016/12/18 14:31:31 fcambus Exp $

COMMENT =	fast web log analyzer using probabilistic data structures

V =		1.06
DISTNAME =	logswan-$V

CATEGORIES =	www

HOMEPAGE =	http://www.logswan.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m jansson GeoIP

MASTER_SITES =	https://github.com/fcambus/logswan/releases/download/$V/

MODULES =	devel/cmake
NO_TEST =	Yes

LIB_DEPENDS =	devel/jansson \
		net/GeoIP

CONFIGURE_ARGS = -DGEOIPDIR=${LOCALSTATEDIR}/db/GeoIP

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/logswan
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/logswan

.include <bsd.port.mk>
