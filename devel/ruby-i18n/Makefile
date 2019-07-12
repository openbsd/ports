# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:58 sthen Exp $

COMMENT =	ruby internationalization and localization solution

DISTNAME =	i18n-1.6.0
CATEGORIES =	devel

HOMEPAGE=	https://github.com/svenfuchs/i18n

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR},>=1.0,<2

# MIT License
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
