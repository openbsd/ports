# $OpenBSD: Makefile,v 1.7 2014/09/27 16:59:31 jeremy Exp $

COMMENT=		whitelist-based HTML sanitizer

DISTNAME=		sanitize-2.0.6
CATEGORIES=		www textproc

HOMEPAGE=		https://github.com/rgrove/sanitize/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=            textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.4.4

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		ruby
MODRUBY_TEST_TARGET=	-I lib test/test_sanitize.rb

.include <bsd.port.mk>
