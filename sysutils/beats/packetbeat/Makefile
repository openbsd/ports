# $OpenBSD: Makefile,v 1.32 2020/07/01 12:04:47 pvk Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	7.8.0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.{reference.yml,yml}

WANTLIB += c pcap pthread

.include <bsd.port.mk>
