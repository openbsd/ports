# $OpenBSD: Makefile,v 1.21 2010/09/28 20:12:16 jeremy Exp $

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

MODULES =	lang/ruby

RUN_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
		::devel/ruby-gems

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =	*

.include <bsd.port.mk>
