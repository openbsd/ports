# $OpenBSD: Makefile,v 1.24 2013/03/11 11:35:56 espie Exp $

COMMENT=	send ICMP nasty garbage

DISTNAME=	SING-1.1
PKGNAME=	${DISTNAME:L}
REVISION=	4
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sing/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://sourceforge.net/projects/sing/

LIB_DEPENDS=	net/libnet/1.0

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap lib/libnet-1.0/net=0

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	INCLUDES="-L${LOCALBASE}/include/libnet-1.0" \
		LDFLAGS="-L${LOCALBASE}/lib/libnet-1.0"
USE_GROFF =	Yes

.include <bsd.port.mk>
