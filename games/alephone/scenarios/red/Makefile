#	$OpenBSD: Makefile,v 1.1.1.1 2009/05/18 06:03:57 phessler Exp $
PKG_ARCH =		*

COMMENT =		dark alternate version of the Marathon universe
V =			0.0.20090509
DISTNAME =		marathon-red-${V}
HOMEPAGE =		http://bighouse.bungie.org/red/

DISTFILES =		MarathonRED.zip

PERMIT_PACKAGE_CDROM =	not for sale
PERMIT_PACKAGE_FTP =	YES
PERMIT_DISTFILES_CDROM = not for sale
PERMIT_DISTFILES_FTP =	YES

INSTALL_LOC =		${PREFIX}/share/alephone
INSTALL_RED =		${INSTALL_LOC}/MarathonRED

do-install:
	@${INSTALL_DATA_DIR} ${INSTALL_RED}
	@cd ${WRKDIR}/"Marathon RED"/ && pax -rw . "${INSTALL_RED}"
	@${INSTALL_SCRIPT} ${FILESDIR}/marathon-red.sh \
		${PREFIX}/bin/marathon-red

NO_BUILD =		Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
