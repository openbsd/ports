QT5NAME =		QtTools

COMMENT-main =		Qt development tools

KDE_COMMIT =		15deb8f202b838b4dd1b2ff84e852171e8587881
KDE_VERSION =		3
REVISION =		0

DPB_PROPERTIES =	parallel

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Designer             3.1 # 5.9
SHARED_LIBS +=  Qt5DesignerComponents   3.0 # 5.9
SHARED_LIBS +=  Qt5Help                 3.0 # 5.9

WANTLIB-main += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB-main += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickWidgets
WANTLIB-main += Qt5Sql Qt5Widgets Qt5Xml c m
WANTLIB-main += llvm${MODCLANG_VERSION}/lib/clang

# avoid BDEP on ourselves
MODQT5_DEPS =	No

MODULES+=			lang/clang
MODCLANG_VERSION =		19
MODCLANG_COMPILER_LINKS =	No
MODCLANG_BUILDDEP =		No
MODCLANG_RUNDEP =		No

LIB_DEPENDS =		x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			${MODCLANG_LIB_DEPENDS} \
			x11/qt5/qtdeclarative>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	bootstrap no_examples
FLAVOR ?=		bootstrap no_examples

CONFIGURE_ENV =	LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}
MODCMAKE_LDFLAGS = -L${LOCALBASE}/llvm${MODCLANG_VERSION}/lib -Wl,-rpath=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

.include <bsd.port.arch.mk>

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
