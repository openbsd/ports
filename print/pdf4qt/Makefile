COMMENT =	PDF generator library, viewer and editor

GH_ACCOUNT =	JakubMelka
GH_PROJECT =	PDF4QT
GH_TAGNAME =	v1.5.2.0
PKGNAME =	${DISTNAME:L}

HOMEPAGE =	https://jakubmelka.github.io/

CATEGORIES =	print

SHARED_LIBS +=  Pdf4QtLibCore             0.0 # 0.0
SHARED_LIBS +=  Pdf4QtLibGui              0.0 # 0.0
SHARED_LIBS +=  Pdf4QtLibWidgets          0.0 # 0.0
SHARED_LIBS +=  AudioBookPlugin           0.0 # 0.0
SHARED_LIBS +=  DimensionsPlugin          0.0 # 0.0
SHARED_LIBS +=  EditorPlugin              0.0 # 0.0
SHARED_LIBS +=  ObjectInspectorPlugin     0.0 # 0.0
SHARED_LIBS +=  OutputPreviewPlugin       0.0 # 0.0
SHARED_LIBS +=  RedactPlugin              0.0 # 0.0
SHARED_LIBS +=  SignaturePlugin           0.0 # 0.0
SHARED_LIBS +=  SoftProofingPlugin        0.0 # 0.0


# LGPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake \
		x11/qt6

# C++20
COMPILER =	base-clang ports-clang

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS +=	graphics/blend2d \
		graphics/lcms2 \
		graphics/openjp2 \
		x11/qt6/qtspeech

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6PrintSupport Qt6Svg Qt6TextToSpeech Qt6Widgets
WANTLIB += Qt6Xml blend2d c crypto freetype jpeg lcms2 m openjp2 ssl z

.include <bsd.port.mk>
