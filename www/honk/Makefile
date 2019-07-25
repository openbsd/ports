# $OpenBSD: Makefile,v 1.8 2019/07/25 02:18:25 lteo Exp $

COMMENT =		federated status updater

DISTNAME =		honk-0.7.4
CATEGORIES =		www

HOMEPAGE =		https://humungus.tedunangst.com/r/honk

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread sqlite3

MASTER_SITES =		${HOMEPAGE}/d/
EXTRACT_SUFX =		.tgz

MODULES =		lang/go
LIB_DEPENDS =		databases/sqlite3

NO_TEST =		Yes
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
