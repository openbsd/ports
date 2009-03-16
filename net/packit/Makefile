# $OpenBSD: Makefile,v 1.3 2009/03/16 11:05:54 sthen Exp $

COMMENT=		packet generation tool
DISTNAME=		packit-1.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net
HOMEPAGE=		http://packit.sf.net/
EXTRACT_SUFX=		.tgz

MASTER_SITES=		http://packit.sourceforge.net/downloads/

MAINTAINER=		Michael Coulter <mjc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		lib/libnet-1.1/net.=11:libnet->=1.1,<1.2:net/libnet/1.1
WANTLIB=		c pcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libnet-includes=${LOCALBASE}/include/libnet-1.1 \
			--with-libnet-libraries=${LOCALBASE}/lib/libnet-1.1
CONFIGURE_ENV=		CPPFLAGS=`libnet-config-1.1 --cflags`

.include <bsd.port.mk>
