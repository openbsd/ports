# $OpenBSD: Makefile,v 1.30 2019/02/21 10:19:48 sebastia Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	6.5.4
REVISION =	0

GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =      filebeat.yml filebeat.reference.yml README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
