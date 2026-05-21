QT5NAME =		QtX11Extras
COMMENT =		X11-specific parts of Qt

KDE_COMMIT =		6695a3df4460577b3fcb5546b45a0c5cb3addac4
KDE_VERSION =		0

SHARED_LIBS +=  Qt5X11Extras                 3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui m

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
