# $OpenBSD: Makefile,v 1.8 2019/08/12 08:17:38 kn Exp $

COMMENT =	action RPG mod based upon the FLARE engine
DISTNAME =	polymorphable-20130410
REVISION =	2
CATEGORIES =	games x11

HOMEPAGE =	https://github.com/makrohn/polymorphable

# GPLv3 & CC-BY-SA-3.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

RUN_DEPENDS =	games/flare

NO_BUILD =	Yes
NO_TEST =	Yes

MODDIR =	${PREFIX}/share/flare/mods/polymorphable

do-install:
	cd ${WRKSRC} && find . -type d -exec ${INSTALL_DATA_DIR} ${MODDIR}/{} \; \
	    -o -type f ! -name \*.txt~ -exec ${INSTALL_DATA} {} ${MODDIR}/{} \;

.include <bsd.port.mk>
