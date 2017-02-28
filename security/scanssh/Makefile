# $OpenBSD: Makefile,v 1.25 2017/02/28 09:52:51 fcambus Exp $

COMMENT=	SSH remote version scanner

DISTNAME=	scanssh-2.1
REVISION =	3
CATEGORIES=	security
MASTER_SITES=	https://monkey.org/~provos/

HOMEPAGE=	https://www.monkey.org/~provos/scanssh/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c event pcap dnet>=1

LIB_DEPENDS=	net/libdnet

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
