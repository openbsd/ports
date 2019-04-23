# $OpenBSD: Makefile,v 1.1.1.1 2019/04/23 11:16:06 sebastia Exp $

COMMENT =		lightweight libcurl wrapper

DISTNAME =		ethon-0.12.0

CATEGORIES =		www
HOMEPAGE =		https://github.com/typhoeus/typhoeus
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ffi,${MODRUBY_FLAVOR},>=1.3

MODRUBY_TEST =		rake rspec
TEST_DEPENDS +=		www/ruby-sinatra,${MODRUBY_FLAVOR} \
			mail/ruby-mime-types,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
