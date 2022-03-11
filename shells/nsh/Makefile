COMMENT =	network switch style shell

DISTNAME =	nsh-1.0.20210509

GH_ACCOUNT =	yellowman
GH_PROJECT =	nsh
GH_COMMIT =	a18420dac8fa3aea55b9b9e9388ac07438816274

CATEGORIES =	shells net
HOMEPAGE =	https://www.nmedia.net/nsh/

MAINTAINER =	Tom Smyth <tom.smyth@wirelessconnect.eu>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c curses edit sqlite3

FLAVORS =	static
FLAVOR ?=

MAKE_FLAGS =	CC="${CC}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
LIB_DEPENDS =	databases/sqlite3

.if ${FLAVOR:Mstatic}
MAKE_FLAGS +=	LDADD="-ledit -ltermcap -lsqlite3 -lm -lpthread -static"
.endif

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/nsh ${PREFIX}/bin
.for i in save-ro.sh save-rw.sh
	${INSTALL_SCRIPT} ${WRKDIST}/${i} ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nsh
	sed -i s,/usr/local,${LOCALBASE},g ${WRKDIST}/MANUAL
.for i in MANUAL README TODO COPYRIGHT
	${INSTALL_DATA} ${WRKDIST}/${i} ${PREFIX}/share/doc/nsh/
.endfor

.include <bsd.port.mk>
