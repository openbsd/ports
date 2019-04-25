# $OpenBSD: Makefile,v 1.4 2019/04/25 18:21:30 jeremy Exp $

COMMENT =		ruby wrapper for pledge(2)

DISTNAME =		pledge-1.1.0
CATEGORIES =		security	

HOMEPAGE =		https://github.com/jeremyevans/ruby-pledge

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST =		ruby
MODRUBY_TEST_ENV =	RUBY=${RUBY} RUBYOPT=-rpledge.so
MODRUBY_TEST_TARGET =	spec/pledge_spec.rb

pre-test:
			ln -s ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/lib \
				${WRKSRC}/lib

.include <bsd.port.mk>
