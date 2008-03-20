# $OpenBSD: Makefile,v 1.1.1.1 2008/03/20 18:59:15 ian Exp $

COMMENT =		dump/restore Grandstream device configurations

DISTNAME =		gsutil-3.0

CATEGORIES =		telephony

HOMEPAGE =		http://www.pkts.ca/gsutil.shtml

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.pkts.ca/

RUN_DEPENDS =		::www/p5-libwww

NO_BUILD =		Yes
NO_REGRESS =		Yes

PKG_ARCH =		*

INSTALL_STRIP =

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/gsutil ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gsutil
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/gsutil

.include <bsd.port.mk>
