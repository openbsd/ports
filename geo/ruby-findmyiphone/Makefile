# $OpenBSD: Makefile,v 1.16 2019/07/12 20:46:55 sthen Exp $

COMMENT=		Ruby library to physically locate iPhones

DISTNAME=		findmyiphone-0.2.1
REVISION=		0
CATEGORIES=		geo

HOMEPAGE=		https://github.com/mattb/findmyiphone

# Ruby license
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/ruby-mechanize,${MODRUBY_FLAVOR}

MODRUBY_TEST=	rake

.include <bsd.port.mk>
