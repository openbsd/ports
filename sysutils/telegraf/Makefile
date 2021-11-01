# $OpenBSD: Makefile,v 1.13 2021/11/01 12:51:11 landry Exp $

COMMENT =	plugin-driven server agent for collecting metrics

BROKEN-i386 =	build fails, no error message
BROKEN-arm =	build fails, no error message

MODGO_VERSION=	v1.20.3
MODGO_MODNAME=	github.com/influxdata/telegraf
GH_ACCOUNT =	influxdata
GH_PROJECT =	telegraf
GH_TAGNAME =	${MODGO_VERSION}
HOMEPAGE =	https://influxdata.com

CATEGORIES =		sysutils

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

WANTLIB +=	c pthread
WRKDIST=	${WRKSRC}

.include "modules.inc"

do-install:
	${MODGO_INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/telegraf/
	${INSTALL_DATA} ${WRKSRC}/etc/telegraf.conf \
		${PREFIX}/share/examples/telegraf/

.include <bsd.port.mk>
