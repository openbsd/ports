# $OpenBSD: Makefile,v 1.12 2016/12/05 17:45:55 jeremy Exp $

COMMENT =	simple subset sum problem solver for ruby

DISTNAME =	subset_sum-1.0.2
CATEGORIES =	devel

HOMEPAGE=	http://ruby-subsetsum.jeremyevans.net/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext
MODRUBY_TEST = ruby
MODRUBY_TEST_TARGET = spec/subset_sum_spec.rb

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
