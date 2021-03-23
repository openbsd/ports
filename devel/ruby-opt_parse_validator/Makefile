# $OpenBSD: Makefile,v 1.13 2021/03/23 22:18:04 sebastia Exp $

COMMENT=		validators for Ruby OptionParser lib

DISTNAME=		opt_parse_validator-1.9.4
CATEGORIES=		devel

HOMEPAGE=		https://github.com/wpscanteam/OptParseValidator
MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-activesupport,${MODRUBY_FLAVOR}>=5.1.2,<6.2 \
			www/ruby-addressable,${MODRUBY_FLAVOR}>=2.5,<2.8

.include <bsd.port.mk>
