# $OpenBSD: Makefile,v 1.33 2019/03/30 04:42:31 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	6.6.0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

CONFIGS =      filebeat.yml filebeat.reference.yml README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
