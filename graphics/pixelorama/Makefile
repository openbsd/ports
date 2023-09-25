# fetching a pre-packaged pck file for amd64, it may or may not work on
# other arches.
ONLY_FOR_ARCHS = amd64

COMMENT =	pixel art editor

V =		0.10.2
DISTNAME =	pixelorama-$V

CATEGORIES =	graphics

HOMEPAGE =	https://orama-interactive.itch.io/pixelorama

MAINTAINER =	Riccardo Mazzurco <mazzurco.riccardo@protonmail.com>

# MIT
PERMIT_PACKAGE = Yes

SITES =		https://github.com/Orama-Interactive/Pixelorama/releases/download/v$V/
SITES.i =	https://github.com/Orama-Interactive/Pixelorama/raw/v$V/Misc/Clickable/click/
DISTFILES =	${DISTNAME}{Pixelorama.Linux-64bit}${EXTRACT_SUFX}
DISTFILES.i = 	pixelorama-$V{icon}.png

EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}

RUN_DEPENDS =	devel/desktop-file-utils \
		games/godot,-main

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/linux-64bit

do-install:
	${SUBST_PROGRAM} ${FILESDIR}/pixelorama.sh ${PREFIX}/bin/pixelorama
	${INSTALL_DATA_DIR} ${PREFIX}/share/{pixelorama,applications,pixmaps}
	${INSTALL_DATA} ${WRKSRC}/Pixelorama.pck ${PREFIX}/share/pixelorama
	${INSTALL_DATA} ${FULLDISTDIR}/pixelorama-$V.png \
		${PREFIX}/share/pixmaps/pixelorama.png
	${INSTALL_DATA} ${FILESDIR}/pixelorama.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
