COMMENT =		modular and flexible STUN and TURN Server

GH_ACCOUNT =		otalk
GH_PROJECT =		restund
GH_COMMIT =		c0ad4cc81fe534f9fbd9cf738a645a6e50120c69
V =			0.4.12.0.20170302
DISTNAME =		restund-${V}

WANTLIB =		c crypto mariadb pthread re ssl z
LIB_DEPENDS =		telephony/baresip/re \
			databases/mariadb,-main

MAKE_FLAGS +=		USE_MYSQL=1 LIBS="-lcrypto -lssl -lz -lc -lre -lpthread"

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
