# $OpenBSD: Makefile,v 1.2 2009/08/16 12:57:34 msf Exp $

COMMENT =	Ruby extensions serving DataMapper and DataObjects

DISTNAME =	extlib-0.9.12
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=extlib/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

MODRUBY_REGRESS =	rake
RAKE_REGRESS_TARGET =	spec
REGRESS_DEPENDS =	::converters/ruby-json

.include <bsd.port.mk>
