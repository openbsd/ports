# $OpenBSD: Makefile,v 1.16 2015/10/01 16:28:01 sthen Exp $

COMMENT =		network switch style shell

DISTNAME =		nsh-1.0.20150914

GH_ACCOUNT =		yellowman
GH_PROJECT =		nsh
GH_COMMIT =		d152f0631ad4e9cd40f093f548e771cf7d019286
WRKDIST =		${WRKDIR}/nsh-${GH_COMMIT}

CATEGORIES =		shells net
HOMEPAGE =		http://www.nmedia.net/nsh/

# 3 & 2 clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c edit termcap sqlite3

MAKE_FLAGS =		CC="${CC}"

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
