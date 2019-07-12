# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:59 sthen Exp $

COMMENT =	utilities to read and parse Argus data

DISTNAME =	argus-clients-3.0.8.2
REVISION =	2
CATEGORIES =	net

HOMEPAGE =	http://qosient.com/argus/
MASTER_SITES =	${HOMEPAGE}/src/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB =	c m curses readline z pthread ft

NO_TEST =	Yes

LIB_DEPENDS =	net/flow-tools

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV =		LOCALBASE=${LOCALBASE}
CONFIGURE_ARGS +=	--with-libft=yes \
			--without-mysql \
			--without-GeoIP \
			--without-sasl
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config
BUILD_DEPENDS =	devel/bison

MAKE_FLAGS =	CCOPT="${CFLAGS}" COMPATLIB="-lm -lz -L${LOCALBASE}/lib -lft"
FAKE_FLAGS =	docdir=${PREFIX}/share/doc/argus-clients/

post-extract:
	@find ${WRKSRC} -name '.gdb_history' -exec rm -f {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/argus/
		mv ${PREFIX}/argus/* ${PREFIX}/share/argus/
	rmdir ${PREFIX}/argus
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/argus-clients/
	cd ${WRKSRC}/support && tar cf - . | \
		tar -C ${PREFIX}/share/examples/argus-clients/ -xf -

.include <bsd.port.mk>
