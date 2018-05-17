# $OpenBSD: Makefile,v 1.24 2018/05/17 12:47:32 pvk Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	6.2.4

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =      filebeat.yml filebeat.reference.yml README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
