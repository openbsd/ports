# $OpenBSD: Makefile,v 1.2 2014/12/11 13:48:42 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		modular and flexible STUN and TURN Server

V =			0.4.11
DISTNAME =		restund-${V}

WANTLIB =		c crypto mysqlclient pthread re ssl z
LIB_DEPENDS =		telephony/baresip/re \
			databases/mariadb,-main

MAKE_FLAGS +=		USE_MYSQL=1 LIBS+="-lc -lre"

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
