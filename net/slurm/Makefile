# $OpenBSD: Makefile,v 1.1.1.1 2008/09/18 23:02:31 sthen Exp $

COMMENT =	network traffic monitor and statistics
DISTNAME =	slurm-0.3.3
CATEGORIES =	net

HOMEPAGE =	http://www.wormulon.net/slurm/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c ncurses

MASTER_SITES =	${HOMEPAGE}

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS}
AUTOCONF_VERSION =	2.59
MAKE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VERSION}

CONFIGURE_STYLE =	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/theme.c ${WRKSRC}/slurm.1

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/slurm ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slurm/
	${INSTALL_DATA_DIR} ${PREFIX}/share/slurm/
.for i in COPYRIGHT FAQ THANKS COPYING
	${INSTALL_DATA} ${WRKBUILD}/$i ${PREFIX}/share/doc/slurm/
.endfor
	${INSTALL_DATA} ${WRKBUILD}/themes/*.theme ${PREFIX}/share/slurm/
	${INSTALL_MAN} ${WRKBUILD}/slurm.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
