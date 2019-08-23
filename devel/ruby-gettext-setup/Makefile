# $OpenBSD: Makefile,v 1.8 2019/08/23 09:12:25 sebastia Exp $

COMMENT=		Ruby gem to ease i18n

DISTNAME =		gettext-setup-0.31
CATEGORIES =		devel
HOMEPAGE =	https://github.com/puppetlabs/gettext-setup-gem
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-fast_gettext,${MODRUBY_FLAVOR}>=1.1.0,<1.7 \
			devel/ruby-gettext,${MODRUBY_FLAVOR}>=3.0.2

CONFIGURE_STYLE =	ruby gem

# At least ruby-crack gem missing
# MODRUBY_TEST =	rake
# TEST_DEPENDS +=		devel/ruby-safe_yaml,${MODRUBY_FLAVOR} \
#			www/ruby-addressable,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
