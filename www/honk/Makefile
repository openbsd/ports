# $OpenBSD: Makefile,v 1.18 2022/03/02 07:31:01 sdk Exp $

COMMENT =		federated status conveyance

DISTNAME =		honk-0.9.7
CATEGORIES =		www

HOMEPAGE =		https://humungus.tedunangst.com/r/honk

MAINTAINER =		Horia Racoviceanu <horia@racoviceanu.com>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread sqlite3

MASTER_SITES =		${HOMEPAGE}/d/
EXTRACT_SUFX =		.tgz

MODULES =		lang/go
LIB_DEPENDS =		databases/sqlite3

NO_TEST =		Yes
ALL_TARGET =		humungus.tedunangst.com/r/honk

SUBST_VARS +=		VARBASE \
			SYSCONFDIR

DOCDIR ?=		${PREFIX}/share/doc/honk
EXAMPLESDIR = 		${PREFIX}/share/examples/honk

post-build:
.for toy in autobonker saytheday sprayandpray youvegothonks
	${MODGO_CMD} build ${MODGO_FLAGS} -o ${MODGO_WORKSPACE}/bin/${toy} \
		${MODGO_WORKSPACE}/src/${ALL_TARGET}/toys/${toy}.go
.endfor
.for toy2 in gettoken wonkawonk
	${MODGO_CMD} build ${MODGO_FLAGS} -o ${MODGO_WORKSPACE}/bin/${toy2} \
		${MODGO_WORKSPACE}/src/${ALL_TARGET}/toys/{${toy2}.go,fetch.go}
.endfor

post-install:
.for p in 1 3 5 7 8
	${INSTALL_MAN} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/docs/*.${p} \
		${PREFIX}/man/man${p}
	rm ${MODGO_WORKSPACE}/src/${ALL_TARGET}/docs/*.${p}
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}/toys
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/toys/README \
		${DOCDIR}/toys
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/{LICENSE,README,docs/*} \
		${DOCDIR}/
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/views
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/views/* \
		${EXAMPLESDIR}/views/
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/schema.sql \
		${EXAMPLESDIR}/

.include <bsd.port.mk>
