# $OpenBSD: Makefile,v 1.13 2017/10/10 12:03:39 sthen Exp $

COMMENT =	next-generation web UI for icinga

GH_ACCOUNT =	Icinga
GH_PROJECT =	icingaweb2
GH_TAGNAME =	v2.4.2
PKGNAME =	icinga-web2-${GH_TAGNAME:S/v//}

MODULES=	lang/php

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-intl \
		php-pdo_mysql-${MODPHP_VSPEC}|php-pdo_pgsql-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-pdo_mysql

NO_TEST =	Yes
NO_BUILD =	Yes

PREFIX =	${VARBASE}/www

do-configure:
	@sed -i 's,^#!/usr/bin/env php.*,#!${MODPHP_BIN},' \
	    ${WRKSRC}/bin/icingacli

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/icinga-web2
	cd ${WRKSRC}; pax -rw ./ ${PREFIX}/icinga-web2/
	find ${PREFIX}/icinga-web2 -name '*.orig' | xargs rm
	ln -s ${TRUEPREFIX}/icinga-web2/bin/icingacli \
	    ${WRKINST}/usr/local/bin/

.include <bsd.port.mk>
