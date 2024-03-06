COMMENT =		link aggregator and comment site via ActivityPub

DISTNAME =		azorius-0.3.4
CATEGORIES =		www

HOMEPAGE =		https://humungus.tedunangst.com/r/azorius

MAINTAINER =		Horia Racoviceanu <horia@racoviceanu.com> \
			Gonzalo L. R. <gonzalo@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread sqlite3

SITES =			${HOMEPAGE}/d/
EXTRACT_SUFX =		.tgz

MODULES =		lang/go
LIB_DEPENDS =		databases/sqlite3

NO_TEST =		Yes
ALL_TARGET =		humungus.tedunangst.com/r/azorius

DOCDIR ?=		${PREFIX}/share/doc/azorius
EXAMPLESDIR =		${PREFIX}/share/examples/azorius

post-install:
	${INSTALL_MAN} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/docs/azorius.8 \
		${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} \
		${MODGO_WORKSPACE}/src/${ALL_TARGET}/{LICENSE,README,docs/*.html} \
		${DOCDIR}/
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/views
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/views/* \
		${EXAMPLESDIR}/views/
	${INSTALL_DATA} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/schema.sql \
		${EXAMPLESDIR}/

.include <bsd.port.mk>
