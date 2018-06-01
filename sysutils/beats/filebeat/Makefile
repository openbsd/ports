# $OpenBSD: Makefile,v 1.25 2018/06/01 15:32:04 sthen Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	6.2.4
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =      filebeat.yml filebeat.reference.yml README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
