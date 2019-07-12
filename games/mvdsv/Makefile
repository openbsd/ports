# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:21 sthen Exp $

COMMENT =	QuakeWorld server

GH_ACCOUNT =	deurk
GH_PROJECT =	mvdsv
GH_TAGNAME =	0.32

CATEGORIES =	games

HOMEPAGE =	https://sourceforge.net/projects/mvdsv/

MAINTAINER =	Tom Murphy <openbsd@pertho.net>

QWP_COMMIT =	0023db327bc1db00068284b70e1db45857aeee35
QWP_VERSION =	20120131
MASTER_SITES0 = https://raw.githubusercontent.com/id-Software/Quake/${QWP_COMMIT}/QW/progs/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c curl m pcre pthread

DISTFILES =	mvdsv-{}${GH_TAGNAME}.tar.gz \
		qwprogs-${QWP_VERSION}{qwprogs}.dat:0
EXTRACT_ONLY =	mvdsv-${GH_TAGNAME}.tar.gz

MODULES =	devel/meson

LIB_DEPENDS =	devel/pcre \
		net/curl

# help ld.bfd find libnghttp2
LDFLAGS =	-L${LOCALBASE}/lib

NO_TEST =	Yes

SAMPLES_DIR =	${PREFIX}/share/examples/mvdsv

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mvdsv ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA} ${FILESDIR}/server.cfg ${SAMPLES_DIR}
	${INSTALL_DATA} ${DISTDIR}/qwprogs-${QWP_VERSION}.dat \
	    ${SAMPLES_DIR}/qwprogs.dat

.include <bsd.port.mk>
