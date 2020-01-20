# $OpenBSD: Makefile,v 1.37 2020/01/20 19:04:04 pvk Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	7.5.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

CONFIGS =	filebeat.yml filebeat.reference.yml README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
