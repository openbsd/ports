# $OpenBSD: Makefile,v 1.5 2017/09/07 09:21:04 rpointel Exp $

COMMENT =		Windows Registry data extraction tool

DISTNAME =		regripper-2.8pl3

CATEGORIES =		security

HOMEPAGE =		https://regripper.wordpress.com/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		keydet89
GH_PROJECT =		RegRipper2.8
GH_COMMIT =		c65c823d2c8371a9f0702248ab22d506ea0a2678

MODULES =		perl

SUBST_VARS=		TRUEPREFIX

RUN_DEPENDS =		devel/p5-Parse-Win32Registry

post-patch:
	rm ${WRKSRC}/plugins/*.pl.orig

pre-install:
	${SUBST_CMD} ${WRKSRC}/rip.pl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rip.pl ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/regripper/
	cp -r ${WRKSRC}/plugins/ ${PREFIX}/share/regripper/
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/regripper/
	cp -r ${WRKSRC}/shellitems.pl ${PREFIX}/${P5SITE}/regripper/

NO_BUILD =		Yes
NO_TEST =		Yes

.include <bsd.port.mk>
