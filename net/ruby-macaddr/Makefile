# $OpenBSD: Makefile,v 1.1.1.1 2013/03/18 20:20:39 jasper Exp $

COMMENT=		cross platform mac address determiniation

DISTNAME=		macaddr-1.6.1
CATEGORIES=		net

HOMEPAGE=		https://github.com/ahoward/macaddr

# ruby
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-systemu,${MODRUBY_FLAVOR}>=2.5.2

.include <bsd.port.mk>
