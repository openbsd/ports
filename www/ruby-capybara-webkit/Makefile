# $OpenBSD: Makefile,v 1.10 2015/07/18 15:46:11 jeremy Exp $

COMMENT =	capybara driver that uses WebKit

DISTNAME =	capybara-webkit-1.5.0
REVISION =	0
CATEGORIES =	www

HOMEPAGE=	https://github.com/thoughtbot/capybara-webkit

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

MAKE_ENV = QMAKE=qmake-qt5
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets stdc++

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-capybara,${MODRUBY_FLAVOR}>=2.3.0,<2.5.0 \
		x11/qt5

.include <bsd.port.mk>
