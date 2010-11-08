# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	fast and very simple Ruby web server

DISTNAME =	thin-1.2.2
REVISION =      1
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
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-rack->=0.3.0:www/ruby-rack,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-daemons->=1.0.9:devel/ruby-daemons,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-eventmachine->=0.12.0:net/ruby-eventmachine,${FLAVOR}

.include <bsd.port.mk>
