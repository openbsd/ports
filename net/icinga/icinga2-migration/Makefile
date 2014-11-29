# $OpenBSD: Makefile,v 1.1.1.1 2014/11/29 12:20:50 sthen Exp $

COMMENT =	config migration script for icinga 1->2

V =		2.0.2
GH_ACCOUNT =	Icinga
GH_PROJECT =	icinga2-migration
GH_TAGNAME =	v$V
DISTNAME =	icinga2-migration-$V

HOMEPAGE =	https://www.icinga.org/icinga2/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/php
RUN_DEPENDS =	www/zendframework

NO_BUILD =	Yes
NO_TEST =	Yes

do-configure:
	perl -pi -e 's,^#!/usr/bin/php,#!${MODPHP_BIN} -d include_path=.:/pear/lib:/var/www/pear/lib:/zendframework:/var/www/zendframework,' \
		${WRKSRC}/bin/icinga-conftool

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icinga2-migration/
	cp -rp ${WRKSRC}/* ${PREFIX}/share/icinga2-migration/
	ln -s ${TRUEPREFIX}/share/icinga2-migration/bin/icinga-conftool \
		${PREFIX}/bin/

.include <bsd.port.mk>
