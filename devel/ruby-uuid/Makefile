# $OpenBSD: Makefile,v 1.2 2013/10/26 23:55:36 jeremy Exp $

COMMENT=		UUID generator

DISTNAME=		uuid-2.3.7
REVISION =		0
CATEGORIES=		devel

HOMEPAGE=		https://github.com/assaf/uuid

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		net/ruby-macaddr,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
