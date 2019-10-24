# $OpenBSD: Makefile,v 1.18 2019/10/24 07:04:42 fcambus Exp $

COMMENT =	fast web log analyzer using probabilistic data structures

V =		2.1.0
DISTNAME =	logswan-$V

CATEGORIES =	www

HOMEPAGE =	https://www.logswan.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c jansson m maxminddb

MASTER_SITES =	https://github.com/fcambus/logswan/releases/download/$V/

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake
NO_TEST =	Yes

LIB_DEPENDS =	devel/jansson \
		net/libmaxminddb

CONFIGURE_ARGS = -DGEOIP2DIR=${LOCALSTATEDIR}/db/GeoIP

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/logswan
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/logswan

.include <bsd.port.mk>
