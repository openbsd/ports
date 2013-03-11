# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:30 espie Exp $

COMMENT =	simple subset sum problem solver for ruby

DISTNAME =	subset_sum-1.0.1
REVISION =	3
CATEGORIES =	devel

HOMEPAGE=	http://subset-sum.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext
MODRUBY_TEST = rspec
MODRUBY_TEST_TARGET = spec/*_spec.rb

.include <bsd.port.mk>
