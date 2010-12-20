# $OpenBSD: Makefile,v 1.2 2010/12/20 18:13:08 ajacoutot Exp $

COMMENT =	fast code profiler for Ruby

DISTNAME =	ruby-${PKGNAME}
PKGNAME =	prof-0.9.2
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://ruby-prof.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

# A few regress failures
MODRUBY_REGRESS = rake
RAKE_REGRESS_TARGET = build test

.include <bsd.port.mk>
