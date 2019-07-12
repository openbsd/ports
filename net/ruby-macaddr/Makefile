# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:47 sthen Exp $

COMMENT=		cross platform mac address determiniation

DISTNAME=		macaddr-1.7.1
CATEGORIES=		net

HOMEPAGE=		https://github.com/ahoward/macaddr

# ruby
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-systemu,${MODRUBY_FLAVOR}>=2.6.2,<2.7.0

.include <bsd.port.mk>
