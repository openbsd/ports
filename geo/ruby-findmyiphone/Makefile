# $OpenBSD: Makefile,v 1.14 2015/06/23 07:21:13 jasper Exp $

COMMENT=		Ruby library to physically locate iPhones

DISTNAME=		findmyiphone-0.2.1
CATEGORIES=		geo

HOMEPAGE=		https://github.com/mattb/findmyiphone

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/ruby-mechanize,${MODRUBY_FLAVOR} \
			converters/ruby-json,${MODRUBY_FLAVOR} \
			${MODRUBY_ICONV_DEPENDS}

MODRUBY_TEST=	rake

.include <bsd.port.mk>
