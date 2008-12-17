# $OpenBSD: Makefile,v 1.1.1.1 2008/12/17 01:34:53 kevlo Exp $

COMMENT=	highly flexible sniffer/NIDS

V=		1.4
DISTNAME=	bro-${V}-release
PKGNAME=	bro-${V}

SHARED_LIBS= 	broccoli	0.0	# .2.0

CATEGORIES=	net security

HOMEPAGE=	http://www.bro-ids.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=   	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP= 	Yes

WANTLIB=	c crypto m pcap ssl stdc++ termcap z

MASTER_SITES=	ftp://bro-ids.org/

LIB_DEPENDS=	GeoIP.>=5::net/GeoIP \
		magic.>=1::devel/libmagic

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/bro-${V}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bro

NO_REGRESS=	Yes

.include <bsd.port.mk>
