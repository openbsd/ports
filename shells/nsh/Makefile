# $OpenBSD: Makefile,v 1.1.1.1 2012/09/17 13:51:51 phessler Exp $
COMMENT =		network switch style shell

V =			20120523
DISTNAME =		nsh-${V}
PKGNAME =		nsh-0.0.${V}

CATEGORIES =		shells net
HOMEPAGE =		http://www.nmedia.net/nsh/

# 3 & 2 clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c edit termcap

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
