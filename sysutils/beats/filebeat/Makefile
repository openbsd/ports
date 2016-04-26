# $OpenBSD: Makefile,v 1.1.1.1 2016/04/26 13:08:03 jasper Exp $

COMMENT =	lightweight, open source shipper for log file data

BEAT =		filebeat
VERSION =	1.2.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json README.md

WANTLIB += c pthread

.include <bsd.port.mk>
