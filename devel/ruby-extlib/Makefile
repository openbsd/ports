# $OpenBSD: Makefile,v 1.6 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	Ruby extensions serving DataMapper and DataObjects

DISTNAME =	extlib-0.9.13
REVISION =      1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake
RAKE_REGRESS_TARGET =	spec
REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-json-*:converters/ruby-json,${FLAVOR}

.include <bsd.port.mk>
