# $OpenBSD: Makefile,v 1.12 2011/11/17 16:08:00 jeremy Exp $

COMMENT =	Ruby extensions serving DataMapper and DataObjects

DISTNAME =	extlib-0.9.15
REVISION =	1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec
REGRESS_DEPENDS =	converters/ruby-json,${MODRUBY_FLAVOR} \
			devel/ruby-jeweler,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
