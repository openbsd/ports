QT5NAME =		QtX11Extras
COMMENT =		X11-specific parts of Qt

KDE_COMMIT =		c44c4fa86fa0794c25baef4ee1f6272aca8c511a
KDE_VERSION =		0

SHARED_LIBS +=  Qt5X11Extras                 3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui m

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
