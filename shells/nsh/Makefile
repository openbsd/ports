# $OpenBSD: Makefile,v 1.3 2013/03/11 11:41:29 espie Exp $
COMMENT =		network switch style shell

V =			1.0
DISTNAME =		nsh-${V}
PKGNAME =		nsh-${V}

CATEGORIES =		shells net
HOMEPAGE =		http://www.nmedia.net/nsh/

# 3 & 2 clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c edit termcap sqlite3

MASTER_SITES =		ftp://ftp.nmedia.net/pub/nsh/
WRKDIST =		${WRKDIR}/nsh
MAKE_FLAGS =		CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/nsh ${PREFIX}/bin
.for i in save-ro.sh save-rw.sh
	${INSTALL_SCRIPT} ${WRKDIST}/${i} ${PREFIX}/bin
.endfor
	ln -s ${TRUEPREFIX}/bin/save-rw.sh ${PREFIX}/bin/save.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nsh
.for i in MANUAL README TODO COPYRIGHT ChangeLog
	${INSTALL_DATA} ${WRKDIST}/${i} ${PREFIX}/share/doc/nsh/
.endfor

.include <bsd.port.mk>
