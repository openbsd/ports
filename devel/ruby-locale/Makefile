# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:26 jeremy Exp $

COMMENT =		basic APIs for localization

DISTNAME =		locale-2.0.4
PKGNAME =		ruby-${DISTNAME}
REVISION =      	0
CATEGORIES =		devel

HOMEPAGE =

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=locale/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
