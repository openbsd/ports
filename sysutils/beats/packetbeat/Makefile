# $OpenBSD: Makefile,v 1.31 2020/05/14 21:53:06 pvk Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	7.7.0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.{reference.yml,yml}

WANTLIB += c pcap pthread

.include <bsd.port.mk>
