# $OpenBSD: Makefile,v 1.10 2019/09/25 10:03:19 espie Exp $

PKG_ARCH =	*
COMMENT =	pictures for your background by OpenBSD developers
CATEGORIES = 	graphics
MAINTAINER = 	Marc Espie <espie@openbsd.org>

GH_PROJECT = 	openbsd-backgrounds
GH_TAGNAME = 	2.9
GH_ACCOUNT = 	marcespie
MASTER_SITES = 	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${GH_TAGNAME}/

# CC-by 4.0
PERMIT_PACKAGE = Yes

NO_TEST = 	Yes
NO_BUILD =	Yes


BG = share/openbsd-backgrounds
LPICS = ${BG}/landscape
PPICS = ${BG}/portrait
SUBST_VARS = BG LPICS PPICS
DESTINATION = ${PREFIX}/${BG}
EXTRACT_ONLY =
RUN_DEPENDS = x11/xwallpaper>=0.6.2

do-install:
	${INSTALL_DATA_DIR} ${DESTINATION}
	cd ${DESTINATION} && tar -s ',^${DISTNAME}/,,' -zxf ${FULLDISTDIR}/${DISTFILES}
	rmdir ${DESTINATION}/${DISTNAME}
	@${SUBST_PROGRAM} ${DESTINATION}/bin/openbsd-wallpaper ${PREFIX}/bin/openbsd-wallpaper
	@${INSTALL_MAN} ${DESTINATION}/man/openbsd-wallpaper.1 ${PREFIX}/man/man1
	rm -rf ${DESTINATION}/{bin,man}

.include <bsd.port.mk>
