# $OpenBSD: Makefile,v 1.6 2013/10/26 23:55:38 jeremy Exp $

COMMENT =	capybara driver that uses WebKit

DISTNAME =	capybara-webkit-0.13.0
REVISION =	3
CATEGORIES =	www

HOMEPAGE=	https://github.com/thoughtbot/capybara-webkit

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

WANTLIB += ICE QtCore QtGui QtNetwork QtWebKit SM X11 Xext Xi
WANTLIB += Xinerama Xrender fontconfig freetype pthread stdc++

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	converters/ruby-json,${MODRUBY_FLAVOR} \
		www/ruby-capybara,${MODRUBY_FLAVOR}>=1.0.0,<1.2 \
		x11/qt4

.include <bsd.port.mk>
