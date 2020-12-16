# $OpenBSD: Makefile.inc,v 1.21 2020/12/16 20:47:31 sthen Exp $

CATEGORIES +=	net

GH_ACCOUNT =	Icinga
PKGNAME =	${DISTNAME:S/icingaweb2/icinga-web2/}

# GPLv2 only
PERMIT_PACKAGE ?=	Yes

.if !defined(MODULE_NAME)
HOMEPAGE =	https://icinga.com/
.else
MODULES +=	lang/php
GH_PROJECT =	icingaweb2-module-${MODULE_NAME}
GH_TAGNAME =	${MODULE_VERSION}
RUN_DEPENDS +=	net/icinga/web2
NO_TEST =	Yes
NO_BUILD =	Yes
PREFIX =	${VARBASE}/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/icinga-web2/modules/${MODULE_NAME}
	cd ${WRKSRC}; pax -rw ./ ${PREFIX}/icinga-web2/modules/${MODULE_NAME}
.endif
