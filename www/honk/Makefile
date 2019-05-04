# $OpenBSD: Makefile,v 1.3 2019/05/04 21:46:17 sthen Exp $

COMMENT =		federated status updater

DISTNAME =		honk-0.4.0
CATEGORIES =		www

HOMEPAGE =		https://humungus.tedunangst.com/r/honk

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/d/
EXTRACT_SUFX =		.tgz

MODULES =		lang/go

NO_TEST =		yes
ALL_TARGET =		humungus.tedunangst.com/r/honk

SUBST_VARS +=		VARBASE

DOCDIR ?=		${PREFIX}/share/doc/honk
EXAMPLESDIR = 		${PREFIX}/share/examples/honk

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/{README,docs/*} \
		${DOCDIR}/
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/views
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/views/* \
		${EXAMPLESDIR}/views/
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/schema.sql \
		${EXAMPLESDIR}/

.include <bsd.port.mk>
