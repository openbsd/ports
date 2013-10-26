# $OpenBSD: Makefile,v 1.12 2013/10/26 23:55:35 jeremy Exp $

COMMENT =		provide ActiveRecord looking validations

DISTNAME =		validatable-1.6.7
REVISION =		6
CATEGORIES =		databases

HOMEPAGE =		http://validatable.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# Fails due to using deprecated Gem.manage_gems method
TEST_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}
MODRUBY_TEST =	rake

.include <bsd.port.mk>
