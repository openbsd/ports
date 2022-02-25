# $OpenBSD: Makefile,v 1.5 2022/02/25 20:55:30 sebastia Exp $

COMMENT =		lightweight libcurl wrapper

DISTNAME =		ethon-0.15.0

CATEGORIES =		www
HOMEPAGE =		https://github.com/typhoeus/ethon
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ffi,${MODRUBY_FLAVOR},>=1.15

MODRUBY_TEST =		rake rspec
TEST_DEPENDS +=		www/ruby-sinatra,${MODRUBY_FLAVOR} \
			mail/ruby-mime-types,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
