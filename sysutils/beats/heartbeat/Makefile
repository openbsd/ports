# $OpenBSD: Makefile,v 1.10 2017/10/09 20:19:38 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	5.6.2

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
