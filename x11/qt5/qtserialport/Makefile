QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components

KDE_COMMIT =		ca1f2486527e7acf87d466062c035845f9774573
KDE_VERSION =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5SerialPort           3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
