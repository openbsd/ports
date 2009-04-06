# $OpenBSD: Makefile,v 1.5 2009/04/06 15:30:13 ajacoutot Exp $

COMMENT = 		web-based SSH client

DISTNAME =		Ajaxterm-0.10
PKGNAME =		ajaxterm-0.10p1

CATEGORIES =		net security www
PKG_ARCH =		*

HOMEPAGE =		http://antony.lesuisse.org/software/ajaxterm/
MAINTAINER =		Laurent Moccellin <moccel_l@epitech.eu>

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

NO_BUILD =		Yes

MODULES =		lang/python

SHARE =			${PREFIX}/share/ajaxterm

do-install:
	${SUBST_CMD} ${WRKDIST}/ajaxterm.py
	${INSTALL_SCRIPT} ${WRKDIST}/ajaxterm.py ${PREFIX}/bin/ajaxterm
	${INSTALL_DATA_DIR} ${SHARE}
	${INSTALL_SCRIPT} ${WRKDIST}/qweb.py ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/ajaxterm.css ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/ajaxterm.html ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/ajaxterm.js ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/sarissa.js ${SHARE}
	${INSTALL_DATA} ${WRKDIST}/sarissa_dhtml.js ${SHARE}
	${INSTALL_MAN}  ${WRKDIST}/ajaxterm.1 ${PREFIX}/man/man1/ajaxterm.1

.include <bsd.port.mk>
