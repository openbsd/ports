# $OpenBSD: Makefile,v 1.12 2015/06/18 07:25:44 bentley Exp $

COMMENT=	highly flexible sniffer/NIDS

V=		1.4
DISTNAME=	bro-${V}-release
PKGNAME=	bro-${V}

REVISION=	4

SHARED_LIBS= 	broccoli	0.0	# .2.0

CATEGORIES=	net security

HOMEPAGE=	https://www.bro.org/

# BSD
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB=	c crypto m pcap pthread ssl stdc++ termcap z GeoIP>=5 magic>=1

MASTER_SITES=	https://www.bro.org/downloads/archive/

LIB_DEPENDS=	net/GeoIP \
		devel/libmagic

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59

WRKDIST=	${WRKDIR}/bro-${V}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bro

NO_TEST=	Yes

.include <bsd.port.mk>
