# $OpenBSD: Makefile,v 1.38 2020/03/10 21:23:06 sthen Exp $

COMMENT =	next-generation web UI for icinga

GH_ACCOUNT =	Icinga
GH_PROJECT =	icingaweb2
GH_TAGNAME =	v2.7.3
PKGNAME =	icinga-web2-${GH_TAGNAME:S/v//}

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MODULES=	lang/php

MODPHP_PDO_ALLOWED = mysql pgsql
MODPHP_PDO_PREF =    mysql

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-intl \
		${MODPHP_PDO_DEPENDS}

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
