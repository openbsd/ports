COMMENT=		validators for Ruby OptionParser lib

DISTNAME=		opt_parse_validator-1.10.0
CATEGORIES=		devel

HOMEPAGE=		https://github.com/wpscanteam/OptParseValidator
MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-activesupport,${MODRUBY_FLAVOR}>=5.2,<7.3 \
			www/ruby-addressable,${MODRUBY_FLAVOR}>=2.5,<2.9

.include <bsd.port.mk>
