# $OpenBSD: Makefile,v 1.7 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	fast and very simple Ruby web server

DISTNAME =	thin-1.2.2
REVISION =	2
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
RUN_DEPENDS =	www/ruby-rack,${MODRUBY_FLAVOR}>=0.3.0 \
		devel/ruby-daemons,${MODRUBY_FLAVOR}>=1.0.9 \
		net/ruby-eventmachine,${MODRUBY_FLAVOR}>=0.12.0

.include <bsd.port.mk>
