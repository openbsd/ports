# $OpenBSD: Makefile,v 1.11 2010/09/28 20:12:19 jeremy Exp $

COMMENT =	wraps web resources in model classes

DISTNAME =	activeresource-2.3.4
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	www

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-activesupport->=2.3.4:devel/ruby-activesupport

CONFIGURE_STYLE =	ruby gem

PKG_ARCH=	*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
