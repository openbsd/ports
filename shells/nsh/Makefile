# $OpenBSD: Makefile,v 1.38 2019/11/06 12:45:45 naddy Exp $

COMMENT =	network switch style shell

DISTNAME =	nsh-1.0.20170819
REVISION =	1

GH_ACCOUNT =	yellowman
GH_PROJECT =	nsh
GH_COMMIT =	23f1338bc463170bbf583096468c47248cfa548e

CATEGORIES =	shells net
HOMEPAGE =	http://www.nmedia.net/nsh/

# 3 & 2 clause BSD
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
