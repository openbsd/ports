# $OpenBSD: Makefile,v 1.11 2020/03/13 16:53:53 rsadowski Exp $

COMMENT-main =		C++ general-purpose toolkit, meta-package
COMMENT-examples =	examples for Qt5, meta-package

PKGNAME =		qt5-${MODQT5_VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-examples =	qt5-examples-${MODQT5_VERSION}

MULTI_PACKAGES =	-main -examples

MODULES =		x11/qt5
MODQT5_DEPS =		No
MODQT5_USE_CXX11 =	No

WANTLIB-main =
LIB_DEPENDS-main =
RUN_DEPENDS-main =	\
			x11/qt5/qt3d,-main=${MODQT5_VERSION} \
			x11/qt5/qtbase,-main=${MODQT5_VERSION} \
			x11/qt5/qtcharts,-main=${MODQT5_VERSION} \
			x11/qt5/qtdatavis3d,-main=${MODQT5_VERSION} \
			x11/qt5/qtdeclarative,-main=${MODQT5_VERSION} \
			x11/qt5/qtgamepad,-main=${MODQT5_VERSION} \
			x11/qt5/qtgraphicaleffects=${MODQT5_VERSION} \
			x11/qt5/qtimageformats=${MODQT5_VERSION} \
			x11/qt5/qtlocation,-main=${MODQT5_VERSION} \
			x11/qt5/qtlottie=${MODQT5_VERSION} \
			x11/qt5/qtmultimedia,-main=${MODQT5_VERSION} \
			x11/qt5/qtnetworkauth,-main=${MODQT5_VERSION} \
			x11/qt5/qtpurchasing,-main=${MODQT5_VERSION} \
			x11/qt5/qtquickcontrols,-main=${MODQT5_VERSION} \
			x11/qt5/qtquickcontrols2,-main=${MODQT5_VERSION} \
			x11/qt5/qtremoteobjects,-main=${MODQT5_VERSION} \
			x11/qt5/qtscript,-main=${MODQT5_VERSION} \
			x11/qt5/qtscxml,-main=${MODQT5_VERSION} \
			x11/qt5/qtsensors,-main=${MODQT5_VERSION} \
			x11/qt5/qtserialbus,-main=${MODQT5_VERSION} \
			x11/qt5/qtserialport,-main=${MODQT5_VERSION} \
			x11/qt5/qtspeech,-main=${MODQT5_VERSION} \
			x11/qt5/qtsvg,-main=${MODQT5_VERSION} \
			x11/qt5/qttools,-main=${MODQT5_VERSION} \
			x11/qt5/qttranslations=${MODQT5_VERSION} \
			x11/qt5/qtvirtualkeyboard,-main=${MODQT5_VERSION} \
			x11/qt5/qtwebchannel,-main=${MODQT5_VERSION} \
			x11/qt5/qtwebkit=${MODQT5_WEBKIT_VERSION} \
			x11/qt5/qtwebsockets,-main=${MODQT5_VERSION} \
			x11/qt5/qtx11extras=${MODQT5_VERSION} \
			x11/qt5/qtxmlpatterns,-main=${MODQT5_VERSION} \

WANTLIB-examples =
LIB_DEPENDS-examples =
RUN_DEPENDS-examples =	\
			x11/qt5/qt3d,-examples=${MODQT5_VERSION} \
			x11/qt5/qtbase,-examples=${MODQT5_VERSION} \
			x11/qt5/qtcharts,-examples=${MODQT5_VERSION} \
			x11/qt5/qtdatavis3d,-examples=${MODQT5_VERSION} \
			x11/qt5/qtdeclarative,,-examples=${MODQT5_VERSION} \
			x11/qt5/qtgamepad,-examples=${MODQT5_VERSION} \
			x11/qt5/qtlocation,-examples=${MODQT5_VERSION} \
			x11/qt5/qtmultimedia,,-examples=${MODQT5_VERSION} \
			x11/qt5/qtnetworkauth,-examples=${MODQT5_VERSION} \
			x11/qt5/qtpurchasing,-examples=${MODQT5_VERSION} \
			x11/qt5/qtquickcontrols,-examples=${MODQT5_VERSION} \
			x11/qt5/qtquickcontrols2,-examples=${MODQT5_VERSION} \
			x11/qt5/qtremoteobjects,-examples=${MODQT5_VERSION} \
			x11/qt5/qtscript,-examples=${MODQT5_VERSION} \
			x11/qt5/qtscxml,-examples=${MODQT5_VERSION} \
			x11/qt5/qtsensors,-examples=${MODQT5_VERSION} \
			x11/qt5/qtserialbus,-examples=${MODQT5_VERSION} \
			x11/qt5/qtserialport,-examples=${MODQT5_VERSION} \
			x11/qt5/qtspeech,-examples=${MODQT5_VERSION} \
			x11/qt5/qtsvg,-examples=${MODQT5_VERSION} \
			x11/qt5/qttools,,-examples=${MODQT5_VERSION} \
			x11/qt5/qtvirtualkeyboard,-examples=${MODQT5_VERSION} \
			x11/qt5/qtwebchannel,-examples=${MODQT5_VERSION} \
			x11/qt5/qtwebsockets,-examples=${MODQT5_VERSION} \
			x11/qt5/qtxmlpatterns,-examples=${MODQT5_VERSION} \

.include <bsd.port.mk>
