# $OpenBSD: Makefile,v 1.6 2019/07/12 20:49:36 sthen Exp $

COMMENT =		ruby wrapper for pledge(2) and unveil(2)

DISTNAME =		pledge-1.2.0
CATEGORIES =		security	

HOMEPAGE =		https://github.com/jeremyevans/ruby-pledge

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST =		ruby
MODRUBY_TEST_ENV =	RUBY=${RUBY} RUBYOPT=-rpledge.so
MODRUBY_TEST_TARGET =	spec/pledge_spec.rb

pre-test:
			ln -s ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/lib/pledge.so \
				${WRKSRC}/lib/pledge.so

.include <bsd.port.mk>
