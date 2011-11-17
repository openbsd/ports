# $OpenBSD: Makefile,v 1.3 2011/11/17 16:08:00 jeremy Exp $

COMMENT =	specialized test framework for running RubySpecs

DISTNAME =	mspec-1.5.17
REVISION=		0
CATEGORIES =	devel

HOMEPAGE =	http://www.rubyspec.org/projects/show/mspec

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

# 1 expected failure on ruby 1.8
# 20 failures on ruby 1.9
MODRUBY_REGRESS = rake rspec

.include <bsd.port.mk>
