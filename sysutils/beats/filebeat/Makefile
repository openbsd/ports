# $OpenBSD: Makefile,v 1.7 2016/10/10 17:28:56 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	1.3.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json README.md

WANTLIB +=	c pthread

.include <bsd.port.mk>
