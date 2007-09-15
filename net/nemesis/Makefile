# $OpenBSD: Makefile,v 1.25 2007/09/15 22:36:55 merdely Exp $

COMMENT=	command line arbitrary packet builder

DISTNAME=	nemesis-1.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nemesis/}

HOMEPAGE=	http://nemesis.sourceforge.net/

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --with-libnet_includes=${LOCALBASE}/include/libnet-1.0 \
		 --with-libnet_libraries=${LOCALBASE}/lib/libnet-1.0
.include <bsd.port.mk>
