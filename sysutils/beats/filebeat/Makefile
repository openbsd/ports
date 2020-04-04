# $OpenBSD: Makefile,v 1.41 2020/04/04 02:52:58 pvk Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	7.6.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

CONFIGS =	filebeat.{reference.yml,yml} modules.d

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
