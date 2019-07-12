# $OpenBSD: Makefile,v 1.26 2019/07/12 20:51:04 sthen Exp $

COMMENT =	capybara driver that uses WebKit

DISTNAME =	capybara-webkit-1.15.0
CATEGORIES =	www
REVISION =	0

HOMEPAGE=	https://github.com/thoughtbot/capybara-webkit

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	GL Qt5Core Qt5Gui Qt5Network Qt5WebKit Qt5WebKitWidgets
WANTLIB +=	Qt5Widgets ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

USE_WXNEEDED =	Yes
MAKE_ENV =	QMAKE=qmake-qt5 LDFLAGS="-Wl,-z,wxneeded"

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-capybara,${MODRUBY_FLAVOR}>=2.3.0,<4.0

LIB_DEPENDS =	x11/qt5/qtwebkit

post-build:
	mv ${GEM_BASE_LIB}/gems/${DISTNAME}/{src,bin}/webkit_server

.include <bsd.port.mk>
