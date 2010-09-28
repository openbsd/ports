# $OpenBSD: Makefile,v 1.5 2010/09/28 20:12:16 jeremy Exp $

COMMENT =	Ruby extensions serving DataMapper and DataObjects

DISTNAME =	extlib-0.9.13
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

MODRUBY_REGRESS =	rake
RAKE_REGRESS_TARGET =	spec
REGRESS_DEPENDS =	::converters/ruby-json

.include <bsd.port.mk>
