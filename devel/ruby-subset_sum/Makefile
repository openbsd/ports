# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:00 sthen Exp $

COMMENT =	simple subset sum problem solver for ruby

DISTNAME =	subset_sum-1.0.2
REVISION =	0
CATEGORIES =	devel

HOMEPAGE=	http://ruby-subsetsum.jeremyevans.net/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext
MODRUBY_TEST = ruby
MODRUBY_TEST_TARGET = spec/subset_sum_spec.rb

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
