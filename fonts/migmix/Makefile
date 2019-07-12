# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:12 sthen Exp $

COMMENT =	mixture of M+ and IPA Gothic fonts, focused on kanji

V =		20150712
PKGNAME =	migmix-$V

CATEGORIES =	fonts

HOMEPAGE =	https://mix-mplus-ipa.osdn.jp/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# IPA Font License Agreement v1.0
PERMIT_PACKAGE =	Yes

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
