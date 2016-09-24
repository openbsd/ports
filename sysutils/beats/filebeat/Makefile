# $OpenBSD: Makefile,v 1.6 2016/09/24 13:15:07 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	1.3.0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json README.md

WANTLIB +=	c pthread

.include <bsd.port.mk>
