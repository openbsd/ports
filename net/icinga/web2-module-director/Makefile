# $OpenBSD: Makefile,v 1.5 2017/10/10 12:03:48 sthen Exp $

COMMENT =	web-based config deployment tool for Icinga 2

GH_ACCOUNT =	Icinga
GH_PROJECT =	icingaweb2-module-director
GH_TAGNAME =	v1.4.0
PKGNAME =	${DISTNAME:S/icingaweb2/icinga-web2/}

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
