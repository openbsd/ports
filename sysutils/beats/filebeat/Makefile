# $OpenBSD: Makefile,v 1.44 2020/07/30 11:01:33 pvk Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	7.8.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

CONFIGS =	filebeat.{reference.yml,yml} modules.d

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
