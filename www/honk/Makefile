COMMENT =		federated status conveyance

DISTNAME =		honk-1.3.1
CATEGORIES =		www

HOMEPAGE =		https://humungus.tedunangst.com/r/honk

MAINTAINER =		Horia Racoviceanu <horia@racoviceanu.com>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread sqlite3

SITES =			${HOMEPAGE}/d/
EXTRACT_SUFX =		.tgz

MODULES =		lang/go
LIB_DEPENDS =		databases/sqlite3

NO_TEST =		Yes
ALL_TARGET =		humungus.tedunangst.com/r/honk

DOCDIR ?=		${PREFIX}/share/doc/honk
EXAMPLESDIR = 		${PREFIX}/share/examples/honk

post-build:
.for toy in autobonker saytheday sprayandpray youvegothonks
	${MODGO_CMD} build ${MODGO_FLAGS} -o ${MODGO_WORKSPACE}/bin/${toy} \
		${MODGO_WORKSPACE}/src/${ALL_TARGET}/toys/${toy}.go
.endfor
.for toy2 in gettoken
	${MODGO_CMD} build ${MODGO_FLAGS} -o ${MODGO_WORKSPACE}/bin/${toy2} \
		${MODGO_WORKSPACE}/src/${ALL_TARGET}/toys/{${toy2}.go,fetch.go}
.endfor

post-install:
	${INSTALL_MAN} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/docs/honk.8 \
		${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${DOCDIR}/toys
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/toys/README \
		${DOCDIR}/toys
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/{LICENSE,README,TODO,docs/*.{css,html,jpg,png,txt}} \
		${DOCDIR}/
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/memes
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/memes/* \
		${EXAMPLESDIR}/memes/
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/views
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/views/* \
		${EXAMPLESDIR}/views/
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/schema.sql \
		${EXAMPLESDIR}/

.include <bsd.port.mk>
