# $OpenBSD: Makefile,v 1.22 2018/01/11 19:27:09 rpe Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	5.6.4
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json \
		filebeat.template-es2x.json \
		filebeat.template-es6x.json \
		README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
