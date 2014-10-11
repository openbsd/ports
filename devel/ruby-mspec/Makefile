# $OpenBSD: Makefile,v 1.7 2014/10/11 19:54:46 jeremy Exp $

COMMENT =	specialized test framework for running RubySpecs

DISTNAME =	mspec-1.5.17
REVISION=		3
CATEGORIES =	devel

HOMEPAGE =	http://www.rubyspec.org/projects/show/mspec

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

# 1 expected failure on ruby 1.8
# 20 failures on ruby 1.9
MODRUBY_TEST = rake rspec

.include <bsd.port.mk>
