# $OpenBSD: Makefile.inc,v 1.23 2021/11/23 09:31:53 sthen Exp $

CATEGORIES +=	net

GH_ACCOUNT =	Icinga
PKGNAME ?=	${DISTNAME:S/icingaweb2/icinga-web2/}

# GPLv2 only
PERMIT_PACKAGE ?=	Yes

MAINTAINER ?=	Stuart Henderson <stu.ports@spacehopper.org>

.if !defined(MODULE_NAME)
HOMEPAGE =	https://icinga.com/
.else
GH_PROJECT ?=	icingaweb2-module-${MODULE_NAME}
GH_TAGNAME ?=	${MODULE_VERSION}
MODULE_DEST ?=	${PREFIX}/icinga-web2/modules/${MODULE_NAME}
RUN_DEPENDS +=	net/icinga/web2
.endif

.if defined(MODULE_DEST)
MODULES +=	lang/php
NO_TEST =	Yes
NO_BUILD =	Yes
PREFIX =	${VARBASE}/www
MODULE_SRC ?=

do-install:
	${INSTALL_DATA_DIR} ${MODULE_DEST}
	cd ${WRKSRC}/${MODULE_SRC}; pax -rw ./ ${MODULE_DEST}
.endif
