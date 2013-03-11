# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:49 espie Exp $

COMMENT=		whitelist-based HTML sanitizer

DISTNAME=		sanitize-2.0.3
REVISION=	1
CATEGORIES=		www textproc

HOMEPAGE=		https://github.com/rgrove/sanitize/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=            textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.4.4,<1.6

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
