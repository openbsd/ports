# $OpenBSD: Makefile,v 1.1 2016/06/22 21:49:53 sthen Exp $

COMMENT =	web-based config deployment tool for Icinga 2

GH_ACCOUNT =	Icinga
GH_PROJECT =	icingaweb2-module-director
GH_COMMIT =	bde3830369991b9fa51275683e91330419aff088
V =		1.0.1pre20160620
DISTNAME =	icinga-web2-module-director-$V

MODULES=	lang/php

RUN_DEPENDS =	net/icinga/web2 \
		lang/php/${MODPHP_VERSION},-curl

NO_TEST =	Yes
NO_BUILD =	Yes

PREFIX =	${VARBASE}/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/icinga-web2/modules/director
	cd ${WRKSRC}; pax -rw ./ ${PREFIX}/icinga-web2/modules/director

.include <bsd.port.mk>
