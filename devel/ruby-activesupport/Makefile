# $OpenBSD: Makefile,v 1.20 2010/09/23 22:30:26 jeremy Exp $

COMMENT =	utility classes and extensions for rails framework 

DISTNAME =	activesupport-2.3.4
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=activesupport/}

MODULES =	lang/ruby

RUN_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
		::devel/ruby-gems

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =	*

.include <bsd.port.mk>
