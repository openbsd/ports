# $OpenBSD: Makefile,v 1.8 2019/11/05 10:18:54 rsadowski Exp $

QT5NAME =		QtTools
COMMENT-main =		Qt development tools
COMMENT-webview =	Webkit-based Qt Designer plugin
PKGNAME-webview =	qwebview-${VERSION}

DPB_PROPERTIES =	parallel

MULTI_PACKAGES =	-main -examples -webview

SHARED_LIBS +=	Qt5Designer		2.2
SHARED_LIBS +=	Qt5DesignerComponents	2.2
SHARED_LIBS +=	Qt5Help			2.2

WANTLIB-main =	${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += GL c m pthread
WANTLIB-main +=	Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB-main +=	Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Sql Qt5Widgets Qt5Xml

WANTLIB-webview =  ${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-webview += GL Qt5Core Qt5Designer Qt5Gui Qt5Network Qt5WebKit
WANTLIB-webview += Qt5WebKitWidgets Qt5Widgets Qt5Xml m pthread

# avoid BDEP on ourselves
MODQT5_DEPS =	No

LIB_DEPENDS =		x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/qt5/qtdeclarative>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
LIB_DEPENDS-webview =	${LIB_DEPENDS} \
			${BUILD_PKGPATH}>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtwebkit>=${QT5_WEBKIT_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	bootstrap no_examples no_webview
FLAVOR ?=		bootstrap no_examples no_webview

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-webview}
pre-configure:
	perl -pi -e 's/^qtHaveModule.*webkitwidgets/\# $$&/' \
	    ${WRKSRC}/src/designer/src/plugins/plugins.pro
.endif

.include <bsd.port.mk>
