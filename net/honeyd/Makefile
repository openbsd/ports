# $OpenBSD: Makefile,v 1.3 2003/09/25 06:25:13 jolan Exp $

COMMENT=	"utility to create virtual hosts on a network"
DISTNAME=	honeyd-0.6a
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.citi.umich.edu/u/provos/honeyd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

BUILD_DEPENDS=	${LOCALBASE}/lib/libdnet.a::net/libdnet

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
