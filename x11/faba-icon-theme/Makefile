# $OpenBSD: Makefile,v 1.1.1.1 2015/04/04 13:16:25 landry Exp $

COMMENT =		sexy and modern icon theme with Tango influences

DISTNAME =		faba-icon-theme-4.0
CATEGORIES =		x11

HOMEPAGE =		http://mokaproject.com/faba-icon-theme/
MASTER_SITES =		https://github.com/moka-project/faba-icon-theme/raw/master/
MASTER_SITES0 =		https://github.com/moka-project/faba-mono-icons/raw/master/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} faba-mono-icons-4.2.tar.gz:0
# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =		*
NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		x11/gtk+3,-guic

ICONSDIR =		${PREFIX}/share/icons/

do-install:
	${INSTALL_DATA_DIR} ${ICONSDIR}
	# Fix perms
	find ${WRKDIST}/../faba* ! -perm 644 -type f -exec chmod 644 {} \;
	cd ${WRKDIST} ; pax -L -rw Faba ${ICONSDIR}
	cd ${WRKDIST}/../faba-mono-icons-4.2/ ; pax -rw Faba-* ${ICONSDIR}

.include <bsd.port.mk>
