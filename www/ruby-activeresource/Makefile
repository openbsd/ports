# $OpenBSD: Makefile,v 1.9 2009/10/12 15:15:51 pirofti Exp $

COMMENT =	wraps web resources in model classes

DISTNAME =	activeresource-2.3.4
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	www

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=activeresource/}

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-activesupport->=2.3.4:devel/ruby-activesupport

CONFIGURE_STYLE =	ruby gem

PKG_ARCH=	*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
