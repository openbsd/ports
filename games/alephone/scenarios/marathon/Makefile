PKG_ARCH =	*

COMMENT =	marathon one data files
V =		20200904
DISTNAME =	marathon-0.0.${V}
HOMEPAGE =	https://alephone.lhowon.org/games/marathon.html

REVISION =	0

DISTFILES =
DISTFILES.g =	Marathon-${V}-Data.zip
DISTFILES.e =	Marathon_Manual-${M_V}{Marathon_Manual}.pdf
M_V =	20220718

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE =	YES

EXTRACT_ONLY =	${DISTFILES.g}
INSTALL_LOC =	${PREFIX}/share/alephone
INSTALL_M =	${INSTALL_LOC}/Marathon
INSTALL_DOC =	${PREFIX}/share/doc/alephone

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_M} ${INSTALL_DOC}
	# Marathon 1
	@cd ${WRKDIR}/Marathon && pax -rw . ${INSTALL_M}
	${INSTALL_SCRIPT} ${FILESDIR}/marathon.sh ${PREFIX}/bin/marathon
	${INSTALL_DATA} ${FULLDISTDIR}/Marathon_Manual-${M_V}.pdf \
		${INSTALL_DOC}/Marathon_Manual.pdf

NO_BUILD =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
