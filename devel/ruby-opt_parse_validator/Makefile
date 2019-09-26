# $OpenBSD: Makefile,v 1.6 2019/09/26 06:30:51 sebastia Exp $

COMMENT=		validators for Ruby OptionParser lib

DISTNAME=		opt_parse_validator-1.8.0
CATEGORIES=		devel

HOMEPAGE=		https://github.com/wpscanteam/OptParseValidator
MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-activesupport,${MODRUBY_FLAVOR}>=4.2,<6.1 \
			www/ruby-addressable,${MODRUBY_FLAVOR}>=2.5,<2.8

MODRUBY_TEST=		rake

.include <bsd.port.mk>
