# $OpenBSD: Makefile,v 1.8 2017/04/27 09:14:59 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	5.3.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.template.json \
		packetbeat.template-es2x.json

WANTLIB += c pcap pthread

pre-configure:
	cp -R ${WRKDIST}/metricbeat/ ${WRKSRC}/../

.include <bsd.port.mk>
