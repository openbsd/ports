# $OpenBSD: Makefile,v 1.17 2017/08/19 12:54:55 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	5.5.2

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
