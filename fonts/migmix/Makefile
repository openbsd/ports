# $OpenBSD: Makefile,v 1.1.1.1 2017/08/10 06:34:17 bentley Exp $

COMMENT =	mixture of M+ and IPA Gothic fonts, focused on kanji

V =		20150712
PKGNAME =	migmix-$V

CATEGORIES =	fonts

HOMEPAGE =	https://mix-mplus-ipa.osdn.jp/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# IPA Font License Agreement v1.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_OSDN_JP:=mix-mplus-ipa/63544/}

DISTFILES =	migmix-1m-$V.zip \
		migmix-1p-$V.zip \
		migmix-2m-$V.zip \
		migmix-2p-$V.zip

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/migmix
	${INSTALL_DATA} ${WRKDIR}/*/*.ttf ${PREFIX}/share/fonts/migmix

.include <bsd.port.mk>
