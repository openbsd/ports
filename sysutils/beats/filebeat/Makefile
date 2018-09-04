# $OpenBSD: Makefile,v 1.26 2018/09/04 12:46:21 espie Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	6.2.4
REVISION =	1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =      filebeat.yml filebeat.reference.yml README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
