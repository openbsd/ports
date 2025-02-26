COMMENT =	QuakeWorld server

CATEGORIES =	games

V =		1.10
DISTNAME =	mvdsv-$V
DISTFILES =	mvdsv-$V{mvdsv-source-with-submodules}.zip
EXTRACT_CASES =	*.zip) ${UNZIP} -Laq ${FULLDISTDIR}/$$archive -d ${WRKSRC};;
DIST_TUPLE +=	github id-software Quake \
			bf4ac424ce754894ac8f1dae6a3981954bc9852d Quake

# GPLv2+
PERMIT_PACKAGE =	Yes

MAINTAINER =	Tom Murphy <openbsd@pertho.net>

HOMEPAGE =	https://mvdsv.quake.se/
SITES =		https://github.com/QW-Group/mvdsv/releases/download/v$V/

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
	${INSTALL_DATA} ${WRKSRC}/Quake/QW/progs/qwprogs.dat \
		${SAMPLES_DIR}/qwprogs.dat

.include <bsd.port.mk>
