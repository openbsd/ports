# $OpenBSD: Makefile,v 1.23 2018/06/13 22:26:53 jeremy Exp $

COMMENT =	capybara driver that uses WebKit

DISTNAME =	capybara-webkit-1.14.0
REVISION =	0
CATEGORIES =	www

HOMEPAGE=	https://github.com/thoughtbot/capybara-webkit

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

USE_WXNEEDED =	Yes
MAKE_ENV =	QMAKE=qmake-qt5 LDFLAGS="-Wl,-z,wxneeded"
WANTLIB +=	GL Qt5Core Qt5Gui Qt5Network Qt5WebKit Qt5WebKitWidgets
WANTLIB +=	Qt5Widgets ${COMPILER_LIBCXX}

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-capybara,${MODRUBY_FLAVOR}>=2.3.0,<2.14.0

LIB_DEPENDS =	x11/qt5/qtwebkit

.include <bsd.port.mk>
