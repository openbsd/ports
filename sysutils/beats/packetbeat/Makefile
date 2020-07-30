# $OpenBSD: Makefile,v 1.33 2020/07/30 11:01:34 pvk Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	7.8.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.{reference.yml,yml}

WANTLIB += c pcap pthread

.include <bsd.port.mk>
