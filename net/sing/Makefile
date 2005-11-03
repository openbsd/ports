# $OpenBSD: Makefile,v 1.12 2005/11/03 18:28:56 naddy Exp $

COMMENT=	"send ICMP nasty garbage"

DISTNAME=	SING-1.1
PKGNAME=	${DISTNAME:L}p1
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sing/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://sourceforge.net/projects/sing/

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap 

SEPARATE_BUILD=	concurrent
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	INCLUDES="-L${LOCALBASE}/include/libnet-1.0" \
		LDFLAGS="-L${LOCALBASE}/lib/libnet-1.0"

.include <bsd.port.mk>
