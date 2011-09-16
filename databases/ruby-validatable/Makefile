# $OpenBSD: Makefile,v 1.9 2011/09/16 08:48:05 espie Exp $

COMMENT =		provide ActiveRecord looking validations

DISTNAME =		validatable-1.6.7
REVISION =		4
CATEGORIES =		databases

HOMEPAGE =		http://validatable.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# Fails due to using deprecated Gem.manage_gems method
REGRESS_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
