# $OpenBSD: Makefile,v 1.8 2018/05/02 19:26:54 naddy Exp $

COMMENT =		modular and flexible STUN and TURN Server

V =			0.4.12
DISTNAME =		restund-${V}
REVISION =		1

WANTLIB =		c crypto mysqlclient pthread re ssl z
LIB_DEPENDS =		telephony/baresip/re \
			databases/mariadb,-main

MAKE_FLAGS +=		USE_MYSQL=1 LIBS="-lc -lre -lpthread"

NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/restund/modules \
	                    ${PREFIX}/share/doc/restund \
	                    ${PREFIX}/share/examples/restund/munin
	${INSTALL_PROGRAM} ${WRKBUILD}/restund ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKBUILD}/*.so ${PREFIX}/lib/restund/modules
	${INSTALL_DATA} ${WRKBUILD}/etc/munin/* \
		${PREFIX}/share/examples/restund/munin
	${INSTALL_DATA} ${WRKDIST}/docs/README ${WRKDIST}/docs/restund.txt \
		${PREFIX}/share/doc/restund
	${INSTALL_DATA} ${WRKDIST}/etc/restund.conf \
		${PREFIX}/share/examples/restund

.include <bsd.port.mk>
