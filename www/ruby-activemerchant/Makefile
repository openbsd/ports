# $OpenBSD: Makefile,v 1.7 2010/09/28 20:12:19 jeremy Exp $

COMMENT =	ruby library for handling credit card processor merchants

DISTNAME =	activemerchant-1.4.2
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	www

HOMEPAGE =	http://www.activemerchant.org/

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::devel/ruby-activesupport \
		::textproc/ruby-builder

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =	*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
