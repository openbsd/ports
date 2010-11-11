# $OpenBSD: Makefile,v 1.19 2010/11/11 17:20:28 espie Exp $

COMMENT=	send ICMP nasty garbage

DISTNAME=	SING-1.1
PKGNAME=	${DISTNAME:L}
REVISION=	3
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sing/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://sourceforge.net/projects/sing/

LIB_DEPENDS=	:libnet->=1.0,<1.1:net/libnet/1.0

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap lib/libnet-1.0/net.=0

SEPARATE_BUILD=	concurrent
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	INCLUDES="-L${LOCALBASE}/include/libnet-1.0" \
		LDFLAGS="-L${LOCALBASE}/lib/libnet-1.0"
USE_GROFF =	Yes

.include <bsd.port.mk>
