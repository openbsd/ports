# $OpenBSD: Makefile,v 1.8 2019/03/14 07:53:42 sebastia Exp $

COMMENT =	ruby internationalization and localization solution

DISTNAME =	i18n-1.6.0
CATEGORIES =	devel

HOMEPAGE=	https://github.com/svenfuchs/i18n

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR},>=1.0,<2

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
