# $OpenBSD: Makefile,v 1.5 2016/08/03 09:34:39 ajacoutot Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	1.2.3
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json README.md

WANTLIB +=	c pthread

.include <bsd.port.mk>
