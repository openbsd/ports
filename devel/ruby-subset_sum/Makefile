# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 18:09:01 jeremy Exp $

COMMENT =	simple subset sum problem solver for ruby

DISTNAME =	subset_sum-1.0.1
CATEGORIES =	devel

HOMEPAGE=	http://subset-sum.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext
MODRUBY_REGRESS = rspec
RSPEC_REGRESS_TARGET = spec/*_spec.rb

.include <bsd.port.mk>
