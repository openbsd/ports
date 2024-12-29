COMMENT =		reads iCal files and outputs remind-compatible files

DIST_TUPLE =		github jbalcorn ical2rem v0.8 .

CATEGORIES =		misc

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Time-TimeDate \
			productivity/p5-iCal-Parser

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ical2rem.pl ${PREFIX}/bin/ical2rem
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ical2rem
.for _f in LICENSE README.md
	${INSTALL_DATA} ${WRKSRC}/${_f} ${PREFIX}/share/doc/ical2rem
.endfor

.include <bsd.port.mk>
