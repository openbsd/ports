# $OpenBSD: Makefile,v 1.20 2016/04/13 09:44:25 sthen Exp $

COMMENT =	network switch style shell

DISTNAME =	nsh-1.0.20151213
REVISION =	0

GH_ACCOUNT =	yellowman
GH_PROJECT =	nsh
GH_COMMIT =	d20e09e1dab907067eaad228432af8b0117cb741

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
