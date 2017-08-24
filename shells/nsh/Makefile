# $OpenBSD: Makefile,v 1.34 2017/08/24 06:05:27 ajacoutot Exp $

COMMENT =	network switch style shell

DISTNAME =	nsh-1.0.20160605
REVISION =	9

GH_ACCOUNT =	yellowman
GH_PROJECT =	nsh
GH_COMMIT =	ef0ff429c8b61365b070fc4feee00a4c0dbc9960

CATEGORIES =	shells net
HOMEPAGE =	http://www.nmedia.net/nsh/

# 3 & 2 clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c edit termcap sqlite3

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
