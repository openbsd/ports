QT5NAME =		QtNetworKAuth
COMMENT-main =		Qt5 network authorization components

KDE_COMMIT =		510687fa4fdee84dd3d6d166e8f080c484016199
KDE_VERSION =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5NetworkAuth              2.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network m

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
