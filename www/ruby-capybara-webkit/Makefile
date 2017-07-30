# $OpenBSD: Makefile,v 1.21 2017/07/30 14:57:00 espie Exp $

COMMENT =	capybara driver that uses WebKit

DISTNAME =	capybara-webkit-1.11.1
REVISION =	5
CATEGORIES =	www

HOMEPAGE=	https://github.com/thoughtbot/capybara-webkit

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby gcc4
CONFIGURE_STYLE = ruby gem ext

MODGCC4_ARCHS =	amd64 i386
MODGCC4_LANGS =	c++

USE_WXNEEDED =	Yes
MAKE_ENV =	QMAKE=qmake-qt5 LDFLAGS="-Wl,-z,wxneeded"
WANTLIB +=	GL Qt5Core Qt5Gui Qt5Network Qt5WebKit Qt5WebKitWidgets
WANTLIB +=	Qt5Widgets ${COMPILER_LIBCXX}

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-capybara,${MODRUBY_FLAVOR}>=2.3.0,<2.8.0

LIB_DEPENDS =	x11/qt5/qtwebkit

.include <bsd.port.mk>
