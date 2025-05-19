PKG_ARCH=		*

COMMENT=		marathon two data files
V =			20200904
DISTNAME=		marathon2-0.0.${V}
PKGNAME=		marathon2-0.0.${V}
HOMEPAGE=		https://alephone.lhowon.org/games/marathon2.html

REVISION =	0

DISTFILES=
DISTFILES.g=		Marathon2-${V}-Data.zip
DISTFILES.e =		Marathon_2_Manual-${M_V}{Marathon_2_Manual}.pdf
M_V =		20220720

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE=	YES

EXTRACT_ONLY =		${DISTFILES.g}
INSTALL_LOC=		${PREFIX}/share/alephone
INSTALL_M2=		${INSTALL_LOC}/Marathon2
INSTALL_DOC=		${PREFIX}/share/doc/alephone

do-install:
	@${INSTALL_DATA_DIR} ${INSTALL_M2} ${INSTALL_DOC}
	# Marathon 2
	@cd ${WRKDIR}/"Marathon 2"/ && pax -rw . "${INSTALL_M2}"
	${INSTALL_SCRIPT} ${FILESDIR}/marathon2.sh ${PREFIX}/bin/marathon2
	${INSTALL_DATA} ${FULLDISTDIR}/Marathon_2_Manual-${M_V}.pdf \
		${INSTALL_DOC}/Marathon_2_Manual.pdf

NO_BUILD=		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
