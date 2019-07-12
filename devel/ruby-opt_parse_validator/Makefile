# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:59 sthen Exp $

COMMENT=		validators for Ruby OptionParser lib

DISTNAME=		opt_parse_validator-1.7.3
CATEGORIES=		devel

HOMEPAGE=		https://github.com/wpscanteam/OptParseValidator
MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-activesupport,${MODRUBY_FLAVOR}>=4.2,<5.3 \
			www/ruby-addressable,${MODRUBY_FLAVOR}>=2.5,<2.7

MODRUBY_TEST=		rake

.include <bsd.port.mk>
