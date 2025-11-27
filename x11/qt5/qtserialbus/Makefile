QT5NAME =		QtSerialBus
COMMENT-main =		Qt5 API for accessing serial bus devices

KDE_COMMIT =		c23069351ec31563c9ea9fcdce42ccdba95ea518
KDE_VERSION =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5SerialBus               1.1 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network c m

FLAVORS =		debug

BUILD_DEPENDS =		x11/qt5/qtserialport

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
