# $OpenBSD: Makefile,v 1.4 2014/05/22 09:48:57 sebastia Exp $

COMMENT =	GNUstep wrapper around libpcap

V =		0.2
DISTNAME =	PcapKit-${V}
REVISION =	0
PKGNAME =	gnustep-pcapkit-${V}
CATEGORIES =	net

SHARED_LIBS =	PcapKit 0.0

HOMEPAGE =	http://gna.org/projects/gnustep-nonfsf
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
WANTLIB =	pthread pcap
MODGNUSTEP_IS_FRAMEWORK = Yes

MAKE_ENV +=	PcapKit_INTERFACE_VERSION=${LIBPcapKit_VERSION}

.include <bsd.port.mk>
