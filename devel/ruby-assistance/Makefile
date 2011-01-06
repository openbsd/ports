# $OpenBSD: Makefile,v 1.7 2011/01/06 04:24:22 jeremy Exp $

COMMENT =		light-weight application support

DISTNAME =		assistance-0.1.5
REVISION =		3
CATEGORIES =		devel lang/ruby

MAINTAINER =		Clint Pachl <pachl@ecentryx.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	devel/ruby-diff-lcs,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET =	spec_no_cov

.include <bsd.port.mk>
