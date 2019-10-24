# $OpenBSD: Makefile,v 1.34 2019/10/24 14:37:09 pvk Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	7.4.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

CONFIGS =      filebeat.yml filebeat.reference.yml README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

.include <bsd.port.mk>
