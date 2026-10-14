COMMENT =	next-generation web UI for icinga

GH_ACCOUNT =	Icinga
GH_PROJECT =	icingaweb2
GH_TAGNAME =	v2.13.0
REVISION =	0
PKGNAME =	icinga-web2-${GH_TAGNAME:S/v//}

MODULES =	lang/php

MODPHP_PDO_ALLOWED = mysql pgsql
MODPHP_PDO_PREF = mysql

# Two alternatives are available for the module used for monitoring services;
# the traditional "monitoring" module using IDO - this used to be bundled
# in icingaweb2 but was split off to web2-module-monitoring in 2.13.0 - and
# icingadb-web using Icinga DB.
RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-intl \
		net/icinga/icinga-php-library \
		net/icinga/icinga-php-thirdparty \
		${MODPHP_PDO_DEPENDS}

NO_TEST =	Yes
NO_BUILD =	Yes

PREFIX =	${VARBASE}/www

do-configure:
	@sed -i 's,^#!/usr/bin/env php.*,#!${MODPHP_BIN},' \
	    ${WRKSRC}/bin/icingacli

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/icinga-web2 ${PREFIX}/conf/modules.sample
	${SUBST_DATA} \
		${FILESDIR}/icingaweb2.conf ${PREFIX}/conf/modules.sample/icingaweb2.conf.dist \
		${FILESDIR}/icingaweb2.fpm.conf ${PREFIX}/conf/modules.sample/icingaweb2.fpm.conf.dist
	cd ${WRKSRC}; pax -rw ./ ${PREFIX}/icinga-web2/
	find ${PREFIX}/icinga-web2 \( -name '*${PATCHORIG}' -or -name '*.beforesubst' \) -delete
	ln -s ${TRUEPREFIX}/icinga-web2/bin/icingacli ${WRKINST}/usr/local/bin/

.include <bsd.port.mk>
