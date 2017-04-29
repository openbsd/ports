# $OpenBSD: Makefile,v 1.1.1.1 2017/04/29 14:16:10 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	5.3.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.yml heartbeat.template.json \
		heartbeat.template-es2x.json

WANTLIB += c pthread

pre-configure:
	cp -R ${WRKDIST}/metricbeat/ ${WRKSRC}/../

.include <bsd.port.mk>
