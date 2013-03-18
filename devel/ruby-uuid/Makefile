# $OpenBSD: Makefile,v 1.1.1.1 2013/03/18 20:17:15 jasper Exp $

COMMENT=		UUID generator

DISTNAME=		uuid-2.3.7
CATEGORIES=		devel

HOMEPAGE=		https://github.com/assaf/uuid

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		net/ruby-macaddr,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
