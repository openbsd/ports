# $OpenBSD: Makefile,v 1.12 2015/07/23 22:11:47 jca Exp $

COMMENT =		network switch style shell

DISTNAME =		nsh-1.0.20140503
REVISION =		2

GH_ACCOUNT =		yellowman
GH_PROJECT =		nsh
GH_COMMIT =		17aad6edd4ad4b0a7f4f281aa575490cbe68606a
WRKDIST =		${WRKDIR}/nsh-${GH_COMMIT}

CATEGORIES =		shells net
HOMEPAGE =		http://www.nmedia.net/nsh/

# 3 & 2 clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c edit termcap sqlite3

#MASTER_SITES =		ftp://ftp.nmedia.net/pub/nsh/
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
