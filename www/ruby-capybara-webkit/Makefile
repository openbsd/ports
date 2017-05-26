# $OpenBSD: Makefile,v 1.17 2017/05/26 15:43:18 ajacoutot Exp $

BROKEN =	unrecognized command line option "-std=gnu++0x"

COMMENT =	capybara driver that uses WebKit

DISTNAME =	capybara-webkit-1.11.1
REVISION =	2
CATEGORIES =	www

HOMEPAGE=	https://github.com/thoughtbot/capybara-webkit

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

USE_WXNEEDED =	Yes
MAKE_ENV =	QMAKE=qmake-qt5 LDFLAGS="-Wl,-z,wxneeded"
WANTLIB +=	GL Qt5Core Qt5Gui Qt5Network Qt5WebKit Qt5WebKitWidgets
WANTLIB +=	Qt5Widgets ${LIBCXX}

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-capybara,${MODRUBY_FLAVOR}>=2.3.0,<2.8.0

LIB_DEPENDS =	x11/qt5/qtwebkit

.include <bsd.port.mk>
