# $OpenBSD: Makefile,v 1.2 2011/09/16 09:24:57 espie Exp $

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
MODRUBY_REGRESS = rake rspec

.include <bsd.port.mk>
