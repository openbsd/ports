# $OpenBSD: Makefile,v 1.4 2010/10/26 21:42:14 jeremy Exp $

COMMENT =	fast and very simple Ruby web server

DISTNAME =	thin-1.2.2
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	www

HOMEPAGE =	http://code.macournoyer.com/thin/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-rack->=0.3.0:www/ruby-rack \
		:ruby-daemons->=1.0.9:devel/ruby-daemons \
		:ruby-eventmachine->=0.12.0:net/ruby-eventmachine

.include <bsd.port.mk>
