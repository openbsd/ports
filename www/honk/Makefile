# $OpenBSD: Makefile,v 1.11 2020/04/29 07:17:33 ajacoutot Exp $

COMMENT =		federated status conveyance

DISTNAME =		honk-0.8.6
CATEGORIES =		www
REVISION =		0

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
.for _i in 1 3 5 7 8
	${INSTALL_MAN} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/docs/*.${_i} \
		${PREFIX}/man/man${_i}
.endfor

.include <bsd.port.mk>
