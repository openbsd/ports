# $OpenBSD: Makefile,v 1.6 2013/10/26 23:55:38 jeremy Exp $

COMMENT=		whitelist-based HTML sanitizer

DISTNAME=		sanitize-2.0.3
REVISION=	2
CATEGORIES=		www textproc

HOMEPAGE=		https://github.com/rgrove/sanitize/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=            textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.4.4,<1.6

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
