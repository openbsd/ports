# $OpenBSD: Makefile,v 1.13 2017/06/02 17:52:05 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	5.4.1

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
