# $OpenBSD: Makefile,v 1.2 2016/04/26 14:15:17 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	1.2.1
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json README.md

WANTLIB += c pthread

.include <bsd.port.mk>
