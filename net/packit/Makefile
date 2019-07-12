# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:42 sthen Exp $

COMMENT=		packet generation tool
DISTNAME=		packit-1.0
REVISION=		2
CATEGORIES=		net
HOMEPAGE=		http://packit.sf.net/
EXTRACT_SUFX=		.tgz

MASTER_SITES=		http://packit.sourceforge.net/downloads/

# GPL
PERMIT_PACKAGE=	Yes

LIB_DEPENDS=		net/libnet/1.1
WANTLIB=		c pcap lib/libnet-1.1/net=11

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libnet-includes=${LOCALBASE}/include/libnet-1.1 \
			--with-libnet-libraries=${LOCALBASE}/lib/libnet-1.1
CONFIGURE_ENV=		CPPFLAGS=`libnet-config-1.1 --cflags`

.include <bsd.port.mk>
