# $OpenBSD: Makefile,v 1.30 2020/04/04 03:07:48 pvk Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	7.6.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.{reference.yml,yml}

WANTLIB += c pcap pthread

.include <bsd.port.mk>
