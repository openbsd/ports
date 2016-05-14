# $OpenBSD: Makefile,v 1.3 2016/05/14 12:52:59 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	1.2.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json README.md

WANTLIB +=	c pthread

.include <bsd.port.mk>
