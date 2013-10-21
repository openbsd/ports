# $OpenBSD: Makefile,v 1.1.1.1 2013/10/21 11:06:14 sebastia Exp $

COMMENT =	GNUstep wrapper around libpcap

V =		0.1
DISTNAME =	PcapKit-${V}
PKGNAME =	gnustep-pcapkit-${V}
CATEGORIES =	net

SHARED_LIBS =	PcapKit 0.0

HOMEPAGE =	http://gna.org/projects/gnustep-nonfsf
MASTER_SITES =	https://www.l00-bugdead-prods.de/distfiles/

MODULES =	x11/gnustep
WANTLIB =	pthread pcap

MODGNUSTEP_NEEDS_GUI =	No
MODGNUSTEP_NEEDS_BASE =	No
RUN_DEPENDS +=	x11/gnustep/base

MAKE_ENV +=	PcapKit_INTERFACE_VERSION=${LIBPcapKit_VERSION}

.include <bsd.port.mk>
