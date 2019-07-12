# $OpenBSD: Makefile,v 1.26 2019/07/12 20:49:36 sthen Exp $

COMMENT=	SSH remote version scanner

DISTNAME=	scanssh-2.1
REVISION =	3
CATEGORIES=	security
MASTER_SITES=	https://monkey.org/~provos/

HOMEPAGE=	https://www.monkey.org/~provos/scanssh/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE=	Yes
WANTLIB=		c event pcap dnet>=1

LIB_DEPENDS=	net/libdnet

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
