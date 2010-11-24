# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:13 jeremy Exp $

COMMENT =		provide ActiveRecord looking validations

DISTNAME =		validatable-1.6.7
REVISION =		2
CATEGORIES =		databases

HOMEPAGE =		http://validatable.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
