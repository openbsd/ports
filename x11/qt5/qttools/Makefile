QT5NAME =		QtTools
COMMENT-main =		Qt development tools
COMMENT-webview =	Webkit-based Qt Designer plugin
PKGNAME-webview =	qwebview-${VERSION}
REVISION =		0

DPB_PROPERTIES =	parallel

MULTI_PACKAGES =	-main -examples -webview

SHARED_LIBS +=  Qt5Designer             3.1 # 5.9
SHARED_LIBS +=  Qt5DesignerComponents   3.0 # 5.9
SHARED_LIBS +=  Qt5Help                 3.0 # 5.9

WANTLIB-main =	${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += GL c llvm${MODCLANG_VERSION}/lib/clang m pthread Qt5QmlModels
WANTLIB-main +=	Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB-main +=	Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Sql Qt5Widgets Qt5Xml

WANTLIB-webview =  ${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-webview += GL Qt5Core Qt5Designer Qt5Gui Qt5Network Qt5WebKit
WANTLIB-webview += Qt5WebKitWidgets Qt5Widgets Qt5Xml m pthread

# avoid BDEP on ourselves
MODQT5_DEPS =	No

MODULES+=			lang/clang
MODCLANG_COMPILER_LINKS =	No
MODCLANG_BUILDDEP =		No
MODCLANG_RUNDEP =		No

LIB_DEPENDS =		x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			${MODCLANG_LIB_DEPENDS} \
			x11/qt5/qtdeclarative>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS-webview =	${LIB_DEPENDS} \
			${BUILD_PKGPATH}>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtwebkit

FLAVORS =		debug
PSEUDO_FLAVORS =	bootstrap no_examples no_webview
FLAVOR ?=		bootstrap no_examples no_webview

CONFIGURE_ENV =		LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-webview}
pre-configure:
	perl -pi -e 's/^qtHaveModule.*webkitwidgets/\# $$&/' \
	    ${WRKSRC}/src/designer/src/plugins/plugins.pro
.endif

.include <bsd.port.mk>
