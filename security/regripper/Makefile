# $OpenBSD: Makefile,v 1.1.1.1 2015/10/28 09:55:17 rpointel Exp $

COMMENT =		Windows Registry data extraction tool

DISTNAME =		regripper-2.8

CATEGORIES =		security

HOMEPAGE =		https://regripper.wordpress.com/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

# specify either the COMMIT or the TAG, not both.
GH_ACCOUNT =		keydet89
GH_PROJECT =		RegRipper2.8
GH_COMMIT =		f33a73f4b0ef71edb0ba54bc90027d2d60a10007

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
