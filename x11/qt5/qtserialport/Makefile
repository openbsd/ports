QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components

KDE_COMMIT =		b64a7eeda9b6a65b5ed01b1b40b07177f0aa4c0f
KDE_VERSION =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5SerialPort           3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
