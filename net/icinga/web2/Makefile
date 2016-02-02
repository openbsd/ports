# $OpenBSD: Makefile,v 1.5 2016/02/02 01:29:05 sthen Exp $

COMMENT =	next-generation web UI for icinga

V =		2.1.2
REVISION =	0
DISTNAME =	icinga-web2-$V
DISTFILES =	${DISTNAME}{v$V}.tar.gz
WRKDIST =	${WRKDIR}/icingaweb2-$V

MASTER_SITES =	https://github.com/Icinga/icingaweb2/archive/

MODULES=	lang/php

RUN_DEPENDS =	graphics/pecl-imagick \
		lang/php/${MODPHP_VERSION},-intl \
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

.include <bsd.port.mk>
