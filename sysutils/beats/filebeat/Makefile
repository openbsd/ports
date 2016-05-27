# $OpenBSD: Makefile,v 1.4 2016/05/27 12:58:43 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	1.2.3

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json README.md

WANTLIB +=	c pthread

.include <bsd.port.mk>
