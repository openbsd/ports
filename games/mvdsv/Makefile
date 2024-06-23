COMMENT =	QuakeWorld server

CATEGORIES =	games

QUAKE_COMMIT =	bf4ac424ce754894ac8f1dae6a3981954bc9852d
DIST_TUPLE +=	github QW-Group mvdsv v1.00 .
DIST_TUPLE +=	github QW-Group qwprot 53af547d0608a1507895fc1629cdc3f4820fc0af src/qwprot
DIST_TUPLE +=	github id-software Quake ${QUAKE_COMMIT} .

# GPLv2+
PERMIT_PACKAGE =	Yes

MAINTAINER =	Tom Murphy <openbsd@pertho.net>

HOMEPAGE =	https://mvdsv.quake.se/

WANTLIB += c curl m pcre pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/pcre \
		net/curl

NO_TEST =	Yes

SAMPLES_DIR =	${PREFIX}/share/examples/mvdsv

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mvdsv ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA} ${FILESDIR}/server.cfg ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKDIR}/Quake-${QUAKE_COMMIT}/QW/progs/qwprogs.dat \
	${SAMPLES_DIR}/qwprogs.dat

.include <bsd.port.mk>
