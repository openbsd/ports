COMMENT =		sexy and modern icon theme with Tango influences

GH_ACCOUNT =		snwh
GH_PROJECT =		faba-icon-theme
GH_TAGNAME =		v4.3
CATEGORIES =		x11
REVISION =		0

HOMEPAGE =		https://snwh.org/moka#faba-icon-theme
SITES.a =	https://github.com/moka-project/faba-mono-icons/raw/master/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} 
DISTFILES.a =	faba-mono-icons-4.2.tar.gz
# GPLv3
PERMIT_PACKAGE =	Yes

PKG_ARCH =		*
NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		x11/gtk+4,-guic

ICONSDIR =		${PREFIX}/share/icons/

do-install:
	${INSTALL_DATA_DIR} ${ICONSDIR}
	# Fix perms
	find ${WRKDIST}/../faba* ! -perm 644 -type f -exec chmod 644 {} +
	cd ${WRKDIST} ; pax -L -rw Faba ${ICONSDIR}
	cd ${WRKDIST}/../faba-mono-icons-4.2/ ; pax -rw Faba-* ${ICONSDIR}

.include <bsd.port.mk>
