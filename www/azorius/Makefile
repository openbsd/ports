COMMENT =		Link aggregator and comment site via ActivityPub

MODGO_MODNAME =		humungus.tedunangst.com/r/azorius
MODGO_VERSION =		v0.2.0
REVISION =		0

DISTNAME =		azorius-${MODGO_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://humungus.tedunangst.com/r/azorius

MAINTAINER =		Horia Racoviceanu <horia@racoviceanu.com> \
			Gonzalo L. R. <gonzalo@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread sqlite3
LIB_DEPENDS =		databases/sqlite3

MODULES =		lang/go

NO_TEST =		Yes

DOCDIR ?=		${PREFIX}/share/doc/azorius
EXAMPLESDIR =		${PREFIX}/share/examples/azorius

post-install:
.for m in azorius.1 azorius.8 intro.1
	mandoc -T html -O style=mandoc.css,man=%N.%S.html ${WRKSRC}/docs/${m} >\
		${WRKSRC}/docs/${m}.html
.endfor
.for p in 1 8
	${INSTALL_MAN} ${WRKSRC}/docs/azorius.${p} \
 		${PREFIX}/man/man${p}
	rm ${WRKSRC}/docs/*.${p}
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README,docs/*} \
		${DOCDIR}/
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/views
	${INSTALL_DATA} ${WRKSRC}/views/* \
		${EXAMPLESDIR}/views/
	${INSTALL_DATA} ${WRKSRC}/schema.sql \
		${EXAMPLESDIR}/

.include "modules.inc"

.include <bsd.port.mk>
