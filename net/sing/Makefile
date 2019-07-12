# $OpenBSD: Makefile,v 1.27 2019/07/12 20:48:49 sthen Exp $

COMMENT=	send ICMP nasty garbage

DISTNAME=	SING-1.1
PKGNAME=	${DISTNAME:L}
REVISION=	6
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sing/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://sourceforge.net/projects/sing/

LIB_DEPENDS=	net/libnet/1.0

PERMIT_PACKAGE=	Yes
WANTLIB=		c pcap lib/libnet-1.0/net=0

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	INCLUDES="-L${LOCALBASE}/include/libnet-1.0" \
		LDFLAGS="-L${LOCALBASE}/lib/libnet-1.0"

.include <bsd.port.mk>
