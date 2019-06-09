# $OpenBSD: Makefile,v 1.4 2019/06/09 14:13:03 espie Exp $

PKG_ARCH =	*
COMMENT =	pictures for your background by OpenBSD developers
CATEGORIES = 	graphics
MAINTAINER = 	Marc Espie <espie@openbsd.org>

GH_PROJECT = 	openbsd-backgrounds
GH_TAGNAME = 	1.9
GH_ACCOUNT = 	marcespie
MASTER_SITES = 	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${GH_TAGNAME}/

# CC-by 4.0
PERMIT_PACKAGE_CDROM = Yes

NO_TEST = 	Yes
NO_BUILD =	Yes


BG = share/openbsd-backgrounds
LPICS = ${BG}/landscape
PPICS = ${BG}/portrait
SUBST_VARS = BG LPICS PPICS
DESTINATION = ${PREFIX}/${BG}
EXTRACT_ONLY =

do-install:
	${INSTALL_DATA_DIR} ${DESTINATION}
	cd ${DESTINATION} && tar -s ',^${DISTNAME}/,,' -zxf ${FULLDISTDIR}/${DISTFILES}
	rmdir ${DESTINATION}/${DISTNAME}
	@${SUBST_PROGRAM} ${FILESDIR}/openbsd-wallpaper ${PREFIX}/bin/openbsd-wallpaper

.include <bsd.port.mk>
