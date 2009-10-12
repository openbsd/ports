# $OpenBSD: Makefile,v 1.5 2009/10/12 15:07:36 pirofti Exp $

COMMENT =	ruby library for handling credit card processor merchants

DISTNAME =	activemerchant-1.4.2
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	www

HOMEPAGE =	http://www.activemerchant.org/

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=activemerchant/}

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::devel/ruby-activesupport \
		::textproc/ruby-builder

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =	*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
