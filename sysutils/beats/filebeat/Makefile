# $OpenBSD: Makefile,v 1.36 2019/12/31 12:27:39 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	7.4.2
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

CONFIGS =	filebeat.yml filebeat.reference.yml README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
