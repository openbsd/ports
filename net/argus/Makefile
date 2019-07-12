# $OpenBSD: Makefile,v 1.24 2019/07/12 20:47:59 sthen Exp $

COMMENT =	Audit Record Generation and Utilization System

DISTNAME =	argus-3.0.8.2
REVISION =	1
CATEGORIES =	net

HOMEPAGE =	http://qosient.com/argus/
MASTER_SITES =	http://qosient.com/argus/src/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB =	c m pcap z

NO_TEST =	Yes

CONFIGURE_STYLE = 	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config
BUILD_DEPENDS =		devel/bison

MAKE_FLAGS =		CCOPT="${CFLAGS}"
INSTALL_TARGET =	install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/argus/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/argus/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/argus/events
	find ${WRKSRC}/support -type f -name '*.orig' -exec rm -f {} \;
	cd ${WRKSRC}/support && tar cf - . | \
		tar -C ${PREFIX}/share/examples/argus/ -xf - 
	cd ${PREFIX}/bin && mv argus-snmp argus-lsof argus-vmstat \
		${PREFIX}/share/examples/argus/events

.include <bsd.port.mk>
