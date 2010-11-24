# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:13 jeremy Exp $

COMMENT =		light-weight application support

DISTNAME =		assistance-0.1.5
REVISION =		2
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
