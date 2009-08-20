# $OpenBSD: Makefile,v 1.2 2009/08/20 22:23:49 bernd Exp $

COMMENT =	tasks for documentation, extension compiling, testing

DISTNAME =	echoe-3.1.1
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://github.com/fauna

# AFL v3.0
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=fauna/}

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::devel/ruby-rake \
			::devel/ruby-rubyforge \
			::devel/ruby-highline

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

.include <bsd.port.mk>
