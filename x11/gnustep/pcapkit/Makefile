# $OpenBSD: Makefile,v 1.11 2019/10/16 13:45:06 ajacoutot Exp $

COMMENT =	GNUstep wrapper around libpcap

V =		0.2
REVISION =	7
DISTNAME =	PcapKit-${V}
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
