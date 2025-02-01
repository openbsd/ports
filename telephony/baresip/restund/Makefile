COMMENT =		modular and flexible STUN and TURN Server

GH_PROJECT =		restund
GH_TAGNAME =	v3.9.0

WANTLIB =		c crypto m mariadb pthread re ssl z
LIB_DEPENDS =		telephony/baresip/re \
			databases/mariadb,-main

post-install:
	mv ${PREFIX}/etc ${PREFIX}/share/examples/restund/

.include <bsd.port.mk>
