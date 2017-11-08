# $OpenBSD: Makefile,v 1.20 2017/11/08 11:49:09 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	5.6.4

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.template.json \
		packetbeat.template-es2x.json \
		packetbeat.template-es6x.json

WANTLIB += c pcap pthread

pre-configure:
	cp -R ${WRKDIST}/metricbeat/ ${WRKSRC}/../

.include <bsd.port.mk>
