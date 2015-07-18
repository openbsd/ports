# $OpenBSD: Makefile,v 1.15 2015/07/18 15:46:11 jeremy Exp $

COMMENT=		Ruby library to physically locate iPhones

DISTNAME=		findmyiphone-0.2.1
REVISION=		0
CATEGORIES=		geo

HOMEPAGE=		https://github.com/mattb/findmyiphone

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/ruby-mechanize,${MODRUBY_FLAVOR}

MODRUBY_TEST=	rake

.include <bsd.port.mk>
