# $OpenBSD: Makefile,v 1.21 2016/05/19 09:22:11 sthen Exp $

COMMENT =	network switch style shell

DISTNAME =	nsh-1.0.20160519

GH_ACCOUNT =	yellowman
GH_PROJECT =	nsh
GH_COMMIT =	878764c385c0f0d2a1ec3e87ee7153daefdc4be8

CATEGORIES =	shells net
HOMEPAGE =	http://www.nmedia.net/nsh/

# 3 & 2 clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c edit termcap sqlite3

FLAVORS =	static
FLAVOR ?=

MAKE_FLAGS =	CC="${CC}"
.if ${FLAVOR:Mstatic}
MAKE_FLAGS +=	LDADD="-ledit -ltermcap -lsqlite3 -static"
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/nsh ${PREFIX}/bin
.for i in save-ro.sh save-rw.sh
	${INSTALL_SCRIPT} ${WRKDIST}/${i} ${PREFIX}/bin
.endfor
	ln -s ${TRUEPREFIX}/bin/save-rw.sh ${PREFIX}/bin/save.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nsh
.for i in MANUAL README TODO COPYRIGHT
	${INSTALL_DATA} ${WRKDIST}/${i} ${PREFIX}/share/doc/nsh/
.endfor

.include <bsd.port.mk>
