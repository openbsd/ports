# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:54 espie Exp $

COMMENT=		packet generation tool
DISTNAME=		packit-1.0
REVISION=		1
CATEGORIES=		net
HOMEPAGE=		http://packit.sf.net/
EXTRACT_SUFX=		.tgz

MASTER_SITES=		http://packit.sourceforge.net/downloads/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		net/libnet/1.1
WANTLIB=		c pcap lib/libnet-1.1/net=11

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libnet-includes=${LOCALBASE}/include/libnet-1.1 \
			--with-libnet-libraries=${LOCALBASE}/lib/libnet-1.1
CONFIGURE_ENV=		CPPFLAGS=`libnet-config-1.1 --cflags`
USE_GROFF =		Yes

.include <bsd.port.mk>
