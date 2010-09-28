# $OpenBSD: Makefile,v 1.6 2010/09/28 20:12:17 jeremy Exp $

COMMENT =		high-level IO library for Ruby

DISTNAME =		highline-1.5.1
PKGNAME =		ruby-${DISTNAME}
REVISION =      	0
CATEGORIES =		devel

HOMEPAGE =		http://highline.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
