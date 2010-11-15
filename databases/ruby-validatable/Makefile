# $OpenBSD: Makefile,v 1.5 2010/11/15 00:22:54 espie Exp $

COMMENT =		provide ActiveRecord looking validations

DISTNAME =		validatable-1.6.7
REVISION =		1
CATEGORIES =		databases

HOMEPAGE =		http://validatable.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	devel/ruby-mocha,${FLAVOR}
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
