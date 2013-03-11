# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:30 espie Exp $

COMMENT =	specialized test framework for running RubySpecs

DISTNAME =	mspec-1.5.17
REVISION=		1
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
