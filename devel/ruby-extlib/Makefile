# $OpenBSD: Makefile,v 1.10 2011/01/06 04:24:23 jeremy Exp $

COMMENT =	Ruby extensions serving DataMapper and DataObjects

DISTNAME =	extlib-0.9.15
REVISION =	0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET =	spec
REGRESS_DEPENDS =	converters/ruby-json,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
