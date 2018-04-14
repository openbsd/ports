# $OpenBSD: Makefile,v 1.23 2018/04/14 22:53:54 sthen Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	5.6.4
REVISION =	1

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
