# $OpenBSD: Makefile,v 1.2 2017/05/08 19:17:21 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	5.4.0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.yml heartbeat.template.json \
		heartbeat.template-es2x.json \
		heartbeat.template-es6x.json

WANTLIB += c pthread

pre-configure:
	cp -R ${WRKDIST}/metricbeat/ ${WRKSRC}/../

.include <bsd.port.mk>
