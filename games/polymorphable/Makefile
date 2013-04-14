# $OpenBSD: Makefile,v 1.1.1.1 2013/04/14 14:55:47 bcallah Exp $

COMMENT =	action RPG mod based upon the FLARE engine
DISTNAME =	polymorphable-20130410
CATEGORIES =	games x11

HOMEPAGE =	https://github.com/makrohn/polymorphable

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3 & CC-BY-SA-3.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://devio.us/~bcallah/source/

RUN_DEPENDS =	games/flare

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/flare/mods/polymorphable
	cd ${WRKSRC} && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/flare/mods/polymorphable/{}" \;
	cd ${WRKSRC} && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/flare/mods/polymorphable/{}" \;
	

.include <bsd.port.mk>
