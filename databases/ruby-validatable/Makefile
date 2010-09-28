# $OpenBSD: Makefile,v 1.3 2010/09/28 20:12:16 jeremy Exp $

COMMENT =		provide ActiveRecord looking validations

DISTNAME =		validatable-1.6.7
PKGNAME =		ruby-${DISTNAME}
REVISION =		0
CATEGORIES =		databases

HOMEPAGE =		http://validatable.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-mocha
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
