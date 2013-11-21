# $OpenBSD: Makefile,v 1.3 2013/11/21 16:04:05 sebastia Exp $

COMMENT =	GNUstep wrapper around libpcap

V =		0.2
DISTNAME =	PcapKit-${V}
PKGNAME =	gnustep-pcapkit-${V}
CATEGORIES =	net

SHARED_LIBS =	PcapKit 0.0

HOMEPAGE =	http://gna.org/projects/gnustep-nonfsf
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
WANTLIB =	pthread pcap

MODGNUSTEP_NEEDS_GUI =	No

MAKE_ENV +=	PcapKit_INTERFACE_VERSION=${LIBPcapKit_VERSION}

.include <bsd.port.mk>
